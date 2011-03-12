<?php
// $Id: token.inc,v 1.1.2.3 2010/02/04 09:33:51 deciphered Exp $
/**
 * @file
 * Provides Custom Formatters integration with the Token module.
 */

/**
 * Implements hook_token_list().
 */
function custom_formatters_token_list($type = 'all') {
  $tokens['global']['path-to-theme']                 = t('Path to current theme.');
  $tokens['global']['path-to-theme-????']            = t('Path to defined theme; path-to-theme-garland, etc.');
  $tokens['global']['path-to-module-????']           = t('Path to defined module; path-to-module-custom_formatters, etc.');
  $tokens['global']['path-to-files']                 = t('Path to files directory.');
  if ($type == 'field' || $type == 'all') {
    if (module_exists('filefield')) {
      $tokens['file']['filefield-alt']               = t('File ALT text.');
      $tokens['file']['filefield-title']             = t('File Title text.');
      if (module_exists('imagecache')) {
        $tokens['file']['filefield-imagecache-????'] = t('File path to defined ImageCache preset; filefield-imagecache-thumb, etc.');
      }
    }
  }
  return $tokens;
}

/**
 * Implements hook_token_values().
 */
function custom_formatters_token_values($type, $object = array()) {
  $values = array();

  switch ($type) {
    case 'global':
      $values['path-to-theme'] = path_to_theme();
      foreach (list_themes() as $theme) {
        $values['path-to-theme-' . $theme->name] = drupal_get_path('theme', $theme->name);
      }
      foreach (module_list() as $module) {
        $values['path-to-module-' . $module] = drupal_get_path('module', $module);
      }
      $values['path-to-files'] = file_directory_path();
      break;

    case 'field':
      if (module_exists('filefield')) {
        $file = $object[0];
        $values['filefield-alt'] = isset($file['data']) && isset($file['data']['alt']) ? $file['data']['alt'] : '';
        $values['filefield-title'] = isset($file['data']) && isset($file['data']['title']) ? $file['data']['title'] : '';
        if (module_exists('imagecache')) {
          foreach (imagecache_presets() as $preset) {
            $values['filefield-imagecache-' . $preset['presetname']] = file_directory_path() . '/imagecache/' . $preset['presetname'] . str_replace(file_directory_path(), '', $file['filepath']);
          }
        }
      }
      break;
  }

  return $values;
}
