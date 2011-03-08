<?php

/**
 * Force refresh of theme registry.
 * DEVELOPMENT USE ONLY - COMMENT OUT FOR PRODUCTION
 */
drupal_rebuild_theme_registry();

function phptemplate_preprocess_videojs_formatter_videojs(&$vars) {
  $vars['items'] = array();
  $field_name = $vars['element']['#field_name'];
  $node = $vars['element']['#node'];
  $number = 0;
  foreach ($node->$field_name as $item) {
    $vars['items'][] = $item;
  }
	if (count($vars['items'])>0) {
	  videojs_add();
  $vars['player_id'] = 'videojs-' . $vars['element']['#node']->nid . '-' . str_replace('_', '-', $vars['element']['#field_name']);
    // Grab any poster image from a field named videojs_poster
  if (!empty($node->field_videojs_poster)) {
    $image = $node->field_videojs_poster[0]; // take the first image from videojs_poster field
    $vars['poster'] = file_create_url($image['filepath']);
  }
}
}

function appcms_menu_tree($tree) {
  return '<ul class="rounded slideleft">'. $tree .'</ul>';
}

function appcms_menu_item($link, $has_children, $menu = '', $in_active_trail = FALSE, $extra_class = NULL) {
  $class = ($menu ? 'expanded' : ($has_children ? 'collapsed' : 'leaf'));
  if (!empty($extra_class)) {
    $class .= ' '. $extra_class;
  }
  if ($in_active_trail) {
    $class .= ' active-trail';
  }
  return '<li class="arrow '. $class .'">'. $link . $menu ."</li>\n";
}

function appcms_menu_depth() {
	$tree = menu_tree_page_data('primary-links');
    list($key, $curr) = each($tree);

    while ($curr) {
      // Terminate the loop when we find the current path in the active trail.
      if ($curr['link']['href'] == $item['href']) {
        $trail[] = $curr['link'];
        $curr = FALSE;
      }
      else {
        // Add the link if it's in the active trail, then move to the link below.
        if ($curr['link']['in_active_trail']) {
          $trail[] = $curr['link'];
          $tree = $curr['below'] ? $curr['below'] : array();
        }
        list($key, $curr) = each($tree);
      }
    }
		return count($trail);
}

// Custom Theme Settings - CSS file
// Other CSS added via the .info file
$jqtheme_css = drupal_get_path('theme', 'appcms').'/themes/'.theme_get_setting('appcms_theme').'/theme.css';
drupal_add_css($jqtheme_css, 'theme', 'screen', TRUE);

$jqbarstheme_css = drupal_get_path('theme', 'appcms').'/jqtouch/extensions/jqt.bars/themes/'.theme_get_setting('appcms_theme').'/theme.css';
drupal_add_css($jqbarstheme_css, 'theme', 'screen', TRUE);