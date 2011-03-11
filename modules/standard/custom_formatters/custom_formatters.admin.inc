<?php
// $Id: custom_formatters.admin.inc,v 1.2.2.10 2010/03/02 06:34:31 deciphered Exp $
/**
 * @file
 * Contains administration functions for the Custom Formatters module.
 */

function custom_formatters_overview($form_state) {
  if (isset($form_state['values']['operation'])) {
    switch ($form_state['values']['operation']) {
      case 'delete':
        return custom_formatters_bulk_delete_confirm($form_state, array_filter($form_state['values']['formatters']));

      case 'export':
        drupal_set_title(t('Bulk export'));
        return custom_formatters_formatter_export_form($form_state, array_filter($form_state['values']['formatters']));
    }
  }

  $form['options'] = array(
    '#type' => 'fieldset',
    '#title' => t('Update options'),
    '#prefix' => '<div class="container-inline">',
    '#suffix' => '</div>',
  );
  $form['options']['operation'] = array(
    '#type' => 'select',
    '#options' => array(
      'export' => t('Export'),
      'delete' => t('Delete'),
    ),
    '#default_value' => 'approve',
  );
  $form['options']['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Update'),
    '#submit' => array('custom_formatters_bulk_submit'),
  );

  $destination = drupal_get_destination();
  $formatters = array();
  foreach (custom_formatters_formatters(FALSE, 25) as $formatter) {
    $formatters[$formatter->cfid] = '';
    $form['label'][$formatter->cfid] = array('#value' => l($formatter->label, 'admin/settings/formatters/edit/' . $formatter->cfid, array('query' => $destination)));
    $form['fields'][$formatter->cfid] = array('#value' => implode(', ', unserialize($formatter->field_types)));
    $operations = array(
      l(t('Edit'), 'admin/settings/formatters/edit/' . $formatter->cfid, array('query' => $destination)),
      l(t('Delete'), 'admin/settings/formatters/delete/' . $formatter->cfid, array('query' => $destination)),
      l(t('Clone'), 'admin/settings/formatters/clone/' . $formatter->cfid, array('query' => $destination)),
    );
    // Export can only be done for 'advanced' formatters.
    if ($formatter->mode == 'advanced') {
      $operations[] = l(t('Export'), 'admin/settings/formatters/export/' . $formatter->cfid, array('query' => $destination));
    }
    $form['operations'][$formatter->cfid] = array('#value' => implode('&nbsp;&nbsp;&nbsp;&nbsp;', $operations));
  }

  $form['formatters'] = array('#type' => 'checkboxes', '#options' => $formatters);
  $form['pager'] = array('#value' => theme('pager', NULL, 25));

  return $form;
}

function theme_custom_formatters_overview($form) {
  $output = '';
  if (isset($form['export'])) {
    return $output;
  }

  $empty = !(isset($form['label']) && is_array($form['label']));
  $select_header = !$empty ? theme('table_select_header_cell') : '';
  $header = array($select_header, t('Label'), t('Field types'), t('Operations'));
  $rows = array();

  $output .= drupal_render($form['options']);
  if (!$empty) {
    foreach (element_children($form['label']) as $key) {
      $row = array();
      $row[] = drupal_render($form['formatters'][$key]);
      $row[] = drupal_render($form['label'][$key]);
      $row[] = drupal_render($form['fields'][$key]);
      $row[] = drupal_render($form['operations'][$key]);
      $rows[] = $row;
    }
  }
  else {
    $rows[] = array(array('data' => t('No formatters available.'), 'colspan' => '4'));
  }

  $output .= theme('table', $header, $rows);
  if ($form['pager']['#value']) {
    $output .= drupal_render($form['pager']);
  }

  $output .= drupal_render($form);

  return $output;
}

function custom_formatters_bulk_submit($form, &$form_state) {
  $form_state['rebuild'] = TRUE;
}

function custom_formatters_bulk_delete_confirm(&$form_state, $formatters) {
  $form = array();
  $form['formatters'] = array(
    '#prefix' => '<ul>',
    '#suffix' => '</ul>',
    '#tree' => TRUE
  );

  foreach ($formatters as $cfid) {
    $name = db_result(db_query('SELECT name FROM {formatters} WHERE cfid = %d', $cfid));
    $form['formatters'][$cfid] = array(
      '#type' => 'hidden',
      '#value' => $cfid,
      '#prefix' => '<li>',
      '#suffix' => check_plain($name) . "</li>\n",
    );
  }

  $form['operation'] = array(
    '#type' => 'hidden',
    '#value' => 'delete'
  );
  $form['#submit'][] = 'custom_formatters_bulk_delete_confirm_submit';

  return confirm_form(
    $form,
    t('Are you sure you want to delete these items?'),
    'admin/settings/formatters', t('This action cannot be undone.'),
    t('Delete all'), t('Cancel')
  );
}

function custom_formatters_bulk_delete_confirm_submit($form, &$form_state) {
  if ($form_state['values']['confirm']) {
    foreach ($form_state['values']['formatters'] as $cfid) {
      db_query("DELETE FROM {formatters} WHERE cfid = %d", $cfid);
    }
    custom_formatters_clear_cache();
    drupal_set_message(t('The items have been deleted.'));
  }
  $form_state['redirect'] = 'admin/settings/formatters';
  return;
}

function custom_formatters_formatter_form($form_state, $formatter = NULL, $op = 'add') {
  $form = array();

  if ($op == 'clone' && empty($form_state['post'])) {
    drupal_set_message(t('Be sure to change the formatter %name when cloning.', array('%name' => 'Name')), 'warning');
  }

  $form['cfid'] = array(
    '#type' => 'value',
    '#value' => ($op == 'edit') ? $formatter->cfid : NULL,
  );

  $form['basic'] = array(
    '#type' => 'fieldset',
    '#title' => t('Basic information'),
  );
  $form['basic']['name'] = array(
    '#type' => 'textfield',
    '#size' => '32',
    '#title' => t('Name'),
    '#default_value' => !is_null($formatter) ? $formatter->name : '',
    '#description' => t('For internal use, must be unique and only use alphanumeric characters and underscores (_).'),
    '#required' => TRUE,
  );
  $form['basic']['label'] = array(
    '#type' => 'textfield',
    '#size' => '32',
    '#title' => t('Label'),
    '#default_value' => !is_null($formatter) ? $formatter->label : '',
    '#description' => t('Human readable name, displayed on Custom Formatters overview page and when selecting your CCK Formatter (prefixed with "!custom").', array('!custom' => t('Custom:'))),
    '#required' => TRUE,
  );
  $form['basic']['description'] = array(
    '#type' => 'textfield',
    '#title' => t('Description'),
    '#default_value' => !is_null($formatter) ? $formatter->description : '',
  );
  $form['basic']['mode'] = array(
    '#type' => 'radios',
    '#title' => t('Editor mode'),
    '#options' => array(
      'basic' => t('Basic'),
      'advanced' => t('Advanced'),
    ),
    '#default_value' => !is_null($formatter) ? $formatter->mode : 'basic',
  );

  if ($op == 'add' && !isset($form_state['storage']['op'])) {
    $form['buttons']['submit'] = array(
      '#type' => 'submit',
      '#value' => t('Next'),
    );
  }

  else {
    if ($op == 'add' && $form_state['storage']['op'] == t('Next')) {
      $form['basic']['name']['#default_value'] = $form_state['values']['name'];
      $form['basic']['label']['#default_value'] = $form_state['values']['label'];
      $form['basic']['description']['#default_value'] = $form_state['values']['description'];
      $form['basic']['mode']['#default_value'] = $form_state['values']['mode'];
    }

    $form['basic']['#collapsible'] = ($op != 'clone');
    $form['basic']['#collapsed'] = ($op != 'clone');
    $form['basic']['mode']['#disabled'] = TRUE;
    $form['basic']['mode_value'] = array(
      '#type' => 'hidden',
      '#value' => $form['basic']['mode']['#default_value'],
    );

    $form['editor'] = array(
      '#type' => 'fieldset',
      '#title' => t('!mode editor', array('!mode' => $form['basic']['mode']['#options'][$form['basic']['mode']['#default_value']])),
    );

    // Custom Formatter preview.
    if (module_exists('devel_generate')) {
      $form['preview'] = array(
        '#type' => 'fieldset',
        '#title' => t('Preview'),
        '#description' => '<div id="preview-wrapper">' . theme('custom_formatters_preview', $formatter) . '</div>',
        '#collapsible' => TRUE,
      );
      $form['preview']['node'] = array(
        '#type' => 'radios',
        '#title' => t('Preview node type'),
        '#options' => devel_generate_content_types(),
        '#default_value' => array_shift(array_keys(devel_generate_content_types())),
        '#description' => '<p><em><strong>' . t('Note') . ':</strong> ' . t('Be aware that previews are only available if a module provides support for !develgen and is not guaranteed to be an exact representation of the formatter. It is recommended to test the formatter on an active node for the best results.', array('!develgen' => '<strong>' . t('Devel Generate') . '</strong>')) . '</em></p>',
      );
      $form['buttons']['preview'] = array(
        '#type' => 'button',
        '#value' => t('Preview'),
        '#ahah' => array(
          'path' => 'js/formatters/preview',
          'wrapper' => 'preview-wrapper',
        ),
      );
    }

    // Invoke selected editor form.
    $function = "custom_formatters_formatter_{$form['basic']['mode']['#default_value']}_editor_form";
    $form['editor'] = array_merge($form['editor'], $function($form_state, $formatter));

    $form['buttons']['submit'] = array(
      '#type' => 'submit',
      '#value' => t('Save'),
      '#submit' => array('custom_formatters_formatter_form_save'),
    );

    if ($op == 'edit') {
      $form['buttons']['delete'] = array(
        '#type' => 'submit',
        '#value' => t('Delete'),
        '#submit' => array('custom_formatters_formatter_form_delete'),
      );
    }
  }

  return $form;
}

function custom_formatters_formatter_basic_editor_form($form_state, $formatter = NULL) {
  $form = array();

  $options = array();
  $fields = _content_field_types();
  // Give modules a chance to alter fields.
  drupal_alter('custom_formatters_fields', $fields);

  ksort($fields);
  foreach ($fields as $id => $field) {
    $options[$field['module']][$id] = $field['label'];
  }
  ksort($options);

  $form['field_types'] = array(
    '#type' => 'select',
    '#title' => t('Field type'),
    '#options' => $options,
    '#default_value' => !is_null($formatter) ? implode(unserialize($formatter->field_types)) : '',
    '#ahah' => array(
      'path' => 'js/formatters/tokens',
      'wrapper' => 'tokens-wrapper',
    ),
    '#required' => TRUE,
  );
  $form['multiple'] = array(
    '#type' => 'value',
    '#value' => 0,
  );
  $form['code'] = array(
    '#type' => 'textarea',
    '#title' => t('HTML'),
    '#rows' => 10,
    '#default_value' => !is_null($formatter) ? $formatter->code : '',
    '#required' => TRUE,
  );
  $form['tokens'] = array(
    '#type' => 'fieldset',
    '#title' => t('Tokens'),
    '#description' =>
      '<div id="tokens-wrapper">' . theme('custom_formatters_token_help', $form['field_types']['#default_value']) . '</div>',
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  return $form;
}

function custom_formatters_formatter_advanced_editor_form($form_state, $formatter = NULL) {
  $form = array();

  $form['field_types'] = array(
    '#type' => 'textfield',
    '#title' => t('Field type(s)'),
    '#autocomplete_path'  => 'js/formatters/autocomplete',
    '#default_value' => !is_null($formatter) ? implode(', ', unserialize($formatter->field_types)) : '',
    '#description' => t('A comma-separated list of CCK fields. Example: number_integer, number_decimal.'),
    '#required' => TRUE,
  );
  $form['multiple'] = array(
    '#type' => 'checkbox',
    '#title' => t('Handle multiple values'),
    '#default_value' => !is_null($formatter) ? $formatter->multiple : 0,
  );
  $form['code'] = array(
    '#type' => 'textarea',
    '#title' => t('PHP'),
    '#rows' => 10,
    '#default_value' => !is_null($formatter) ? $formatter->code : '',
    '#description' => t('Enter the php code that will be evaluated. You do not need to use enclose the code between %php. The $element variable provides information about the field being formatted. The code should return a string.', array('%php' => '<?php ?>')),
    '#required' => TRUE,
  );

  return $form;
}

function custom_formatters_formatter_form_validate($form, &$form_state) {
  // Formatter name must be alphanumeric characters and underscores (_) only.
  if (preg_match('/[^a-zA-Z0-9_]/', $form_state['values']['name'])) {
    form_error($form['basic']['name'], t('Formatter name must be alphanumeric characters and underscores (_) only.'));
  }

  // Make sure formatter name isn't already in use by another formatter.
  $formatter = custom_formatters_formatter_by_name($form_state['values']['name']);
  if (!empty($formatter) && $formatter->cfid !== $form_state['values']['cfid']) {
    form_error($form['basic']['name'], t('A formatter with the name %name already exists.', array('%name' => $form_state['values']['name'])));
  }
}

function custom_formatters_formatter_form_submit($form, &$form_state) {
  if ($form_state['clicked_button']['#value'] == t('Next')) {
    $form_state['storage'] = $form_state['values'];
  }
}

function custom_formatters_formatter_form_save($form, &$form_state) {
  $form_state['values']['field_types'] = explode(', ', $form_state['values']['field_types']);

  // Create new formatter.
  if (!$form_state['values']['cfid']) {
    drupal_write_record('formatters', $form_state['values']);
    drupal_set_message(t('Formatter %name was added.', array('%name' => $form_state['values']['name'])));
  }

  // Update existing formatter.
  else {
    drupal_write_record('formatters', $form_state['values'], 'cfid');
    drupal_set_message(t('Formatter %name (ID: @id) was updated.', array('%name' => $form_state['values']['name'], '@id' => $form_state['values']['cfid'])));
  }

  custom_formatters_clear_cache();
  $form_state['redirect'] = 'admin/settings/formatters';
  unset($form_state['storage']);
}

function custom_formatters_formatter_form_delete($form, &$form_state) {
  drupal_goto('admin/settings/formatters/delete/' . $form_state['values']['cfid']);
}

function custom_formatters_formatter_delete_form($form_state, $formatter = array()) {
  if (empty($formatter)) {
    drupal_set_message(t('The specified formatter was not found'), 'error');
    drupal_goto('admin/settings/formatters');
  }

  $form = array();

  $form['cfid'] = array(
    '#type' => 'value',
    '#value' => $formatter->cfid
  );

  return confirm_form(
    $form,
    t('Are you sure you want to delete the formatter %name?', array('%name' => $formatter->name)),
    'admin/settings/formatters',
    t('This action cannot be undone.'),
    t('Delete'),
    t('Cancel')
  );
}

function custom_formatters_formatter_delete_form_submit($form, &$form_state) {
  $formatter = custom_formatters_formatter($form_state['values']['cfid']);

  db_query("DELETE FROM {formatters} WHERE cfid = %d", $form_state['values']['cfid']);
  custom_formatters_clear_cache();

  drupal_set_message(t('Formatter %name (ID: @id) was deleted.', array('%name' => $formatter->name, '@id' => $formatter->cfid)));
  $form_state['redirect'] = 'admin/settings/formatters';
}

function custom_formatters_formatter_export_form($form_state, $formatters = array()) {
  if (empty($formatters)) {
    drupal_set_message(t('The specified formatter was not found'), 'error');
    drupal_goto('admin/settings/formatters');
  }

  $form = array();
  if (is_array($formatters)) {
    $form['operation'] = array('#type' => 'hidden', '#value' => 'export');
    $form['formatters']['#tree'] = TRUE;
    foreach ($formatters as $formatter) {
      $formatters[$formatter] = custom_formatters_formatter($formatter);
      if ($formatters[$formatter]->mode == 'basic') {
        unset($formatters[$formatter]);
        drupal_set_message(t('Only advanced formatters can be exported.'), 'warning', FALSE);
      }
      else {
        $form['formatters'][$formatter] = array('#type' => 'hidden', '#value' => $formatter);
      }
    }
    $form['#submit'][] = 'custom_formatters_formatter_export_form_submit';
  }
  else {
    $formatters = array($formatters->cfid => $formatters);
  }

  $form['extra'] = array(
    '#type' => 'fieldset',
  );
  $form['extra']['module'] = array(
    '#type' => 'textfield',
    '#title' => t('Module name'),
    '#default_value' => !empty($form_state['storage']) ? $form_state['storage']['module'] : 'mymodule',
  );
  $form['extra']['submit'] = array(
    '#type' => 'submit',
    '#value' => 'Update',
  );
  $export = theme('custom_formatters_export', $formatters, $form['extra']['module']['#default_value']);
  $form['export']['output'] = array(
    '#type' => 'textarea',
    '#title' => t('Export'),
    '#value' => $export,
    '#rows' => count(split("\n", $export)),
  );

  return $form;
}

function custom_formatters_formatter_export_form_submit($form, &$form_state) {
  $form_state['storage']['module'] = $form_state['values']['module'];
  $formatters = $form_state['values']['formatters'];
}

function custom_formatters_token_help() {
  drupal_json(array(
    'status' => TRUE,
    'data' => theme_custom_formatters_token_help($_POST['field_types'])
  ));
}

/**
 * For a given context, builds a formatted list of tokens and descriptions
 * of their replacement values.
 *
 * @param field
 *    The field type the token display documentation is required for.
 * @param prefix
 *    The prefix your module will use when parsing tokens. Defaults to '['
 * @param suffix
 *    The suffix your module will use when parsing tokens. Defaults to ']'
 * @return
 *    An HTML table containing the formatting docs.
 */
function theme_custom_formatters_token_help($field = NULL, $prefix = '[', $suffix = ']') {
  $tokens = array();
  $fields = _content_field_types();
  if (!empty($fields) && isset($fields[$field])) {
    $module = $fields[$field]['module'];

    // Build tokens list.
    foreach (_custom_formatters_tokens_list($field) as $module) {
      if (function_exists($function = "{$module}_token_list")) {
        $tokens = array_merge_recursive($function('field'), $tokens);
      }
    }
  }
  $tokens = array_merge($tokens, token_get_list('node'));
  // Prepend node tokens with 'node-' to prevent namespace conflicts.
  $tokens['node'] = array_flip($tokens['node']);
  foreach ($tokens['node'] as &$token) {
    $token = 'node-' . $token;
  }
  $tokens['node'] = array_flip($tokens['node']);

  $headers = array(t('Token'), t('Replacement value'));
  $rows = array();
  foreach ($tokens as $key => $category) {
    $rows[] = array(array('data' => drupal_ucfirst($key) .' '. t('tokens'), 'class' => 'region', 'colspan' => 2));
    foreach ($category as $token => $description) {
      $row = array();
      $row[] = $prefix . $token . $suffix;
      $row[] = $description;
      $rows[] = $row;
    }
  }

  return theme('table', $headers, $rows, array('class' => 'description'));
}

/**
 * Menu callback; Retrieve a JSON object containing Custom Formatter preview.
 */
function custom_formatters_preview() {
  $_POST['field_types'] = serialize(explode(', ', $_POST['field_types']));
  $_POST['mode'] = $_POST['mode_value'];
  unset($_POST['form_build_id'], $_POST['form_token'], $_POST['form_id'], $_POST['op'], $_POST['mode_value']);

  $output = theme('custom_formatters_preview', (object) $_POST);
  drupal_json(array(
    'status' => TRUE,
    'data' => theme('status_messages') . $output,
  ));
}

function theme_custom_formatters_preview($formatter) {
  module_load_include('inc', 'devel_generate');
  include_once(drupal_get_path('module', 'content') . '/includes/content.devel.inc');
  $output = '';

  // Build temporary node object.
  $node = new stdClass;
  $node->type = isset($formatter->node) ? $formatter->node : array_shift(array_keys(devel_generate_content_types()));
  module_load_include('inc', 'node', 'node.pages');
  node_object_prepare($node);
  devel_generate_content_pre_node($results);
  $users = $results['users'];
  $node->nid = rand(1, 3);
  $node->uid = $users[array_rand($users)];
  $node->title = devel_create_greeking(mt_rand(1, 8), TRUE);
  $node->body = "node ($node->type) - " . devel_create_content();
  $node->teaser = node_teaser($node->body);
  $node->filter = variable_get('filter_default_format', 1);
  $node->format = FILTER_FORMAT_DEFAULT;
  $node->language = '';
  $node->revision = mt_rand(0, 1);
  $node->promote = mt_rand(0, 1);
  $node->created = time() - mt_rand(0, 604800);

  $info = content_types($node->type);
  $fields = _content_field_types();
  // Give modules a change to alter fields.
  drupal_alter('custom_formatters_fields', $fields);

  if (isset($formatter)) {
    foreach (unserialize($formatter->field_types) as $field_type) {
      if (isset($fields[$field_type])) {
        $module = $fields[$field_type]['module'];

        $field = array(
          'field_name' => NULL,
          'type' => $field_type,
          'multiple' => 1,
          'widget' => array(
            'module' => '_custom_formatters',
            'type' => isset($formatter->multiple) && $formatter->multiple ? 'multiple' : 'single',
          ),
        );
        // Invoke hook_custom_formatters_field_prepare().
        if (function_exists($function = "{$module}_custom_formatters_{$field_type}_prepare")) {
          $field = _custom_formatters_array_merge_recursive($function(), $field);
        }

        $items = array();
        // Invoke hook_content_generate().
        if (function_exists($function = "{$module}_content_generate")) {
          $items = $function((array) $node, $field);
          foreach ($info['fields'] as $key => $node_field) {
            if ($node_field['type'] == $field['type']) {
              $node->{$key} = array($items);
            }
          }
        }

        $element = array(
          'items' => array(),
          '#single' => FALSE,
          '#title' => $fields[$field_type]['label'],
          '#page' => TRUE,
          '#field_name' => $fields[$field_type]['label'],
          '#label_display' => 'above',
          '#teaser' => FALSE,
          '#node' => $node,
          '#type' => 'content_field',
          '#custom_formatters' => TRUE,
        );

        if (!isset($formatter->multiple) || !$formatter->multiple) {
          $element['items'] = array(
            '#formatter' => $formatter,
            '#theme' => 'custom_formatters_formatter',
            '#item' => $items,
            '#node' => $node,
          );

          if ($formatter->mode == 'basic') {
            $element['items']['#field_name'] = $fields[$field_type]['label'];
            $element['items']['#item']['view'] = theme("{$module}_formatter_default", $element['items']);
          }
        }

        else {
          $element['items'] = array(
            '#formatter' => $formatter,
            '#theme' => 'custom_formatters_formatter',
            '#node' => $node,
          );
          foreach ($items as $item) {
            $element['items'][] = array(
              '#item' => $item,
            );
          }
        }

        $output .= drupal_render($element);
      }

      else {
        // Field type doesn't exist.
        drupal_set_message(t("Field type %field_type does not exist or it's parent module is currently disabled.", array('%field_type' => $field_type)), 'warning');
      }
    }
  }

  return $output;
}

function custom_formatters_preprocess_content_field(&$variables) {
  if (isset($variables['element']['#custom_formatters'])) {
    $variables['field_type_css'] = 'custom_formatter-preview';
    $variables['field_name_css'] = 'custom_formatter-preview';
    $variables['label'] = $variables['element']['#title'];
    $variables['label_display'] = 'above';
  }
}

function _custom_formatters_array_merge_recursive() {
  $args = func_get_args();
  $a = array_shift($args);

  foreach ($args as $b) {
    foreach ($b as $key => $val) {
      if (is_array($val) && isset($a[$key]) && is_array($a[$key])) {
        $b[$key] = _custom_formatters_array_merge_recursive($a[$key], $val);
      }
    }
    $a = array_merge($a, $b);
  }

  return $a;
}

function _custom_formatters_widget_info() {
  return array(
    'single' => array(
      'multiple values' => CONTENT_HANDLE_CORE,
    ),
    'multiple' => array(
      'multiple values' => CONTENT_HANDLE_MODULE,
    ),
  );
}

/**
 * Menu callback; Retrieve a JSON object containing autocomplete suggestions
 * for cck widgets.
 */
function custom_formatters_autocomplete($string = '') {
  // The user enters a comma-separated list of fields. We only autocomplete the last tag.
  $array = drupal_explode_tags($string);

  // Fetch last field.
  $last_string = trim(array_pop($array));
  $matches = array();
  if ($last_string != '') {
    $prefix = count($array) ? implode(', ', $array) . ', ' : '';

    $fields = _content_field_types();
    // Give modules a chance to alter fields.
    drupal_alter('custom_formatters_fields', $fields);

    $fields = array_keys($fields);
    sort($fields);
    foreach ($fields as $field) {
      if (preg_match('/^' . drupal_strtolower($last_string) . '/', $field)) {
        $matches[$prefix . $field] = check_plain($field);
      }
    }
  }

  drupal_json($matches);
}
