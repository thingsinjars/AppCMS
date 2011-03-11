<?php
// $Id: nd.inc,v 1.1.2.1 2010/02/04 09:33:51 deciphered Exp $
/**
 * @file
 * Provides Custom Formatters integration with the Node displays module.
 */

/**
 * Implements hook_type_alter().
 */
function custom_formatters_ds_fields_alter(&$fields) {
  foreach (custom_formatters_formatters() as $formatter) {
    if (preg_match_all('/\bnd_(.*?)\b/', implode(' ', unserialize($formatter->field_types)), $matches)) {
      foreach ($matches[1] as $key) {
        if (isset($fields[$key])) {
          $fields[$key]['properties']['formatters']["custom_formatters_formatter_custom_formatters_{$formatter->name}"] = t('Custom: !label', array('!label' => $formatter->label));
        }
      }
    }
  }
}

/**
 * Implements hook_type_alter().
 */
function nd_custom_formatters_fields_alter(&$fields) {
  foreach (ds_get_fields('nd', NULL, NULL) as $key => $field) {
    if ($field['type'] == DS_FIELD_TYPE_THEME || $field['type'] == DS_FIELD_TYPE_CODE) {
      $fields['nd_' . $key] = array(
        'label' => $field['title'],
        'module' => 'nd',
      );
    }
  }
}

/**
 * Implements hook_type_alter().
 */
function nd_custom_formatters_formatter_element_alter(&$element) {
  if (isset($element['module']) && $element['module'] == 'nd') {
    // Rebuild element.
    $element = array(
      '#formatter' => drupal_substr($element['formatter'], 28),
      '#node' => $element['object'],
      '#type_name' => $element['type'],
      '#field_name' => $element['key'],
      '#weight' => NULL,
      '#theme' => $element['formatter'],
      '#item' => (array) $element['object'],
    );
  }
}
