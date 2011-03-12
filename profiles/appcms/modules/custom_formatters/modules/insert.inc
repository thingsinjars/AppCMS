<?php
// $Id: insert.inc,v 1.1.2.2 2010/01/15 06:05:39 deciphered Exp $
/**
 * @file
 * Provides Custom Formatters integration with the Insert module.
 */

/**
 * Implements hook_insert_styles().
 */
function custom_formatters_insert_styles() {
  $formatters = custom_formatters_formatters();
  $insert_styles = array();
  foreach ($formatters as $formatter) {
    if (!$formatter->multiple && in_array('filefield', unserialize($formatter->field_types))) {
      $insert_styles['custom_formatters_' . $formatter->name] = array(
        'label' => t('Custom: !label', array('!label' => $formatter->label)),
      );
    }
  }
  return $insert_styles;
}

/**
 * Implementation of hook_insert_content().
 */
function custom_formatters_insert_content($item, $style, $widget) {
  $element = array(
    '#formatter' => $style['name'],
    '#item' => $item,
  );

  return theme('custom_formatters_formatter_' . $element['#formatter'], $element);
}
