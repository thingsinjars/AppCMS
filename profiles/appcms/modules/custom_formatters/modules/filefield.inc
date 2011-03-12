<?php
// $Id: filefield.inc,v 1.1.2.2 2010/01/19 05:47:19 deciphered Exp $
/**
 * @file
 * Provides Custom Formatters integration with the FileField module.
 */

/**
 * Implements hook_custom_formatters_field_prepare().
 */
function filefield_custom_formatters_filefield_prepare() {
  file_check_directory($path = file_directory_path() . '/._tmp.custom_formatters', TRUE);
  return array(
    'widget' => array(
      'file_extensions' => 'jpg png',
      'file_path' => '._tmp.custom_formatters'
    ),
  );
}

/**
 * Implements hook_custom_formatters_field_tokens().
 */
function filefield_custom_formatters_filefield_tokens() {
  return array(
    'filefield_paths',
    'file_aliases',
  );
}
