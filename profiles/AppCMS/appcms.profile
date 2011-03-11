<?php
/********************************
 *           DETAILS            *
 ********************************/
function appcms_profile_details() {
  return array ( 'name' => 'AppCMS', 'description' => 'Profile to install the AppCMS', );
}

/********************************
 *           MODULES            *
 ********************************/
function appcms_profile_modules() {
  return array ( 0 => 'admin_theme', 1 => 'advanced_help', 2 => 'content', 3 => 'menu', 4 => 'block', 5 => 'ahah_response', 6 => 'ctools', 7 => 'token', 8 => 'date_api', 9 => 'date_timezone', 10 => 'date', 11 => 'dblog', 12 => 'filefield', 13 => 'filter', 14 => 'flexifield', 15 => 'html_export_appcms', 16 => 'jquery_update_appcms', 17 => 'automenu', 18 => 'menu_block', 19 => 'node', 20 => 'system', 21 => 'custom_formatters', 22 => 'toolbar', 23 => 'update', 24 => 'upload', 25 => 'user', 26 => 'views', 27 => 'views_ui', );
}

/********************************
 *            TASKS             *
 ********************************/
function appcms_profile_tasks() {

/********************************
 *     INSTALL PROFILE API      *
 ********************************/
install_include(appcms_profile_modules());


/********************************
 *    VARIABLES (AND THEMES)     *
 ********************************/
variable_set("add_date_format_title", '');
variable_set("add_date_format_type", '');
variable_set("admin_theme", 'seven');
variable_set("admin_theme_admin_theme_batch", 1);
variable_set("admin_theme_path", 'admin/build/block');
variable_set("admin_theme_path_disallow", '');
variable_set("anonymous", 'Anonymous');
variable_set("automenu_hide_calendar", 0);
variable_set("automenu_hide_calendar_item", 0);
variable_set("automenu_hide_event", 1);
variable_set("automenu_hide_image_gallery", 1);
variable_set("automenu_hide_jqt_event", 1);
variable_set("book_allowed_types", array ( 0 => 'book', ));
variable_set("book_child_type", 'book');
variable_set("browscap_imported", 1298631069);
variable_set("browscap_version", '4637');
variable_set("clean_url", 1);
variable_set("comment_page", 0);
variable_set("configurable_timezones", '0');
variable_set("content_extra_weights_calendar", array ( 'title' => '-5', 'body_field' => '-4', 'revision_information' => '-1', 'author' => '0', 'options' => '1', 'menu' => '-2', ));
variable_set("content_extra_weights_calendar_item", array ( 'title' => '-5', 'body_field' => '-2', 'revision_information' => '-1', 'author' => '0', 'options' => '1', 'menu' => '-4', 'attachments' => '2', ));
variable_set("content_extra_weights_event", array ( 'title' => '-5', 'body_field' => '-2', 'revision_information' => '0', 'author' => '-1', 'options' => '1', 'menu' => '-3', ));
variable_set("content_extra_weights_image_gallery", array ( 'title' => '-5', 'revision_information' => '20', 'author' => '20', 'options' => '25', 'menu' => '-2', 'attachments' => '30', ));
variable_set("content_extra_weights_jqt_event", array ( 'title' => '-5', 'revision_information' => '-1', 'author' => '-2', 'options' => '0', 'menu' => '-3', 'attachments' => '1', ));
variable_set("content_extra_weights_page", array ( 'title' => '-5', 'body_field' => '-3', 'revision_information' => '4', 'author' => '3', 'options' => '5', 'menu' => '-4', 'attachments' => '-2', ));
variable_set("css_js_query_string", 'g83LjQGA000000000000');
variable_set("ctools_last_cron", 1298631069);
variable_set("date:jqt_event:full:field_date_fromto", 'both');
variable_set("date:jqt_event:full:field_date_multiple_from", '');
variable_set("date:jqt_event:full:field_date_multiple_number", '');
variable_set("date:jqt_event:full:field_date_multiple_to", '');
variable_set("date:jqt_event:full:field_date_show_repeat_rule", 'show');
variable_set("date:jqt_event:teaser:field_date_fromto", 'both');
variable_set("date:jqt_event:teaser:field_date_multiple_from", '');
variable_set("date:jqt_event:teaser:field_date_multiple_number", '');
variable_set("date:jqt_event:teaser:field_date_multiple_to", '');
variable_set("date:jqt_event:teaser:field_date_show_repeat_rule", 'show');
variable_set("date_api_use_iso8601", 0);
variable_set("date_api_version", '5.2');
variable_set("date_default_timezone", 0);
variable_set("date_default_timezone_name", 'Europe/London');
variable_set("date_first_day", '0');
variable_set("date_format_datetime", 'Y-m-j\\Th:i\\Z');
variable_set("date_format_long", 'l, F j, Y - H:i');
variable_set("date_format_medium", 'D, Y-m-d H:i');
variable_set("date_format_short", 'Y-m-d H:i');
variable_set("drupal_http_request_fails", false);
variable_set("file_directory_temp", '/tmp');
variable_set("filter_html_1", 1);
variable_set("form_build_id_calendar", 'form-1f974e8170e5e7638d6b38d013ec37bd');
variable_set("form_build_id_calendar_item", 'form-73e569ed2d78f10b2527a90856c4aff2');
variable_set("form_build_id_event", 'form-7523a6a8b08164c95868ee353b300a0a');
variable_set("form_build_id_image_gallery", 'form-b5e9c4f4bb2e819acab2139a3bcdd0c4');
variable_set("form_build_id_jqt_event", 'form-4cfb01594a8b98ecee5622d916924865');
variable_set("html_export", '1');
variable_set("html_export_appcms", '1');
variable_set("install_task", 'done');
variable_set("install_time", 1295539882);
variable_set("javascript_parsed", array ( ));
variable_set("jquery_update_appcms_replace", false);
variable_set("jquery_update_compression_type", 'min');
variable_set("jquery_update_replace", false);
variable_set("menu_block_1_admin_title", '');
variable_set("menu_block_1_depth", '1');
variable_set("menu_block_1_expanded", 0);
variable_set("menu_block_1_follow", 'child');
variable_set("menu_block_1_level", '2');
variable_set("menu_block_1_parent", 'primary-links:0');
variable_set("menu_block_1_sort", 0);
variable_set("menu_block_1_title_link", 0);
variable_set("menu_block_ids", array ( 0 => 1, ));
variable_set("menu_block_menu_order", array ( 'primary-links' => '', ));
variable_set("menu_expanded", array ( ));
variable_set("menu_masks", array ( 0 => 127, 1 => 117, 2 => 63, 3 => 62, 4 => 61, 5 => 59, 6 => 58, 7 => 56, 8 => 31, 9 => 30, 10 => 29, 11 => 24, 12 => 21, 13 => 15, 14 => 14, 15 => 11, 16 => 7, 17 => 6, 18 => 5, 19 => 4, 20 => 3, 21 => 2, 22 => 1, ));
variable_set("node_admin_theme", 1);
variable_set("node_options_book", array ( 0 => 'status', ));
variable_set("node_options_calendar", array ( 0 => 'status', ));
variable_set("node_options_calendar_item", array ( 0 => 'status', 1 => 'promote', ));
variable_set("node_options_event", array ( 0 => 'status', ));
variable_set("node_options_forum", array ( 0 => 'status', ));
variable_set("node_options_image_gallery", array ( 0 => 'status', ));
variable_set("node_options_jqt_event", array ( 0 => 'status', ));
variable_set("node_options_page", array ( 0 => 'status', ));
variable_set("parentmenuen_calendar", '0');
variable_set("parentmenuen_calendar_item", '0');
variable_set("parentmenuen_event", '0');
variable_set("parentmenuen_image_gallery", '0');
variable_set("parentmenuen_jqt_event", '0');
variable_set("parentmenu_calendar", '0');
variable_set("parentmenu_calendar_item", '0');
variable_set("parentmenu_event", '0');
variable_set("parentmenu_image_gallery", '0');
variable_set("parentmenu_jqt_event", '0');
variable_set("roles", array ( ));
variable_set("site_footer", '');
variable_set("site_frontpage", 'node/9');
variable_set("site_frontpage_mobile", 'node');
variable_set("site_mail", 'simon@angryrobotzombie.com');
variable_set("site_mission", '');
variable_set("site_name", 'Mobile App');
variable_set("site_slogan", '');
variable_set("theme_appcms_settings", array ( 'toggle_logo' => 1, 'toggle_name' => 1, 'toggle_slogan' => 0, 'toggle_mission' => 1, 'toggle_node_user_picture' => 0, 'toggle_comment_user_picture' => 0, 'toggle_search' => 0, 'toggle_favicon' => 1, 'toggle_primary_links' => 1, 'toggle_secondary_links' => 1, 'default_logo' => 0, 'logo_path' => '', 'logo_upload' => '', 'default_favicon' => 1, 'favicon_path' => '', 'favicon_upload' => '', 'appcms_theme' => 'apple', ));
system_theme_data();
variable_set("theme_default", 'appcms');
variable_set("theme_iwebkit_settings", array ( 'toggle_logo' => 1, 'toggle_name' => 1, 'toggle_slogan' => 0, 'toggle_mission' => 1, 'toggle_node_user_picture' => 0, 'toggle_comment_user_picture' => 0, 'toggle_search' => 0, 'toggle_favicon' => 1, 'toggle_primary_links' => 1, 'toggle_secondary_links' => 1, 'default_logo' => 1, 'logo_path' => '', 'logo_upload' => '', 'default_favicon' => 1, 'favicon_path' => '', 'favicon_upload' => '', 'iwebkit_theme' => 'gray', 'iwebkit_menu_type' => 'normal-every', ));
variable_set("theme_settings", array ( 'toggle_node_info_page' => false, ));
variable_set("update_last_check", 1298631072);
variable_set("upload_calendar", '0');
variable_set("upload_calendar_item", '1');
variable_set("upload_event", '0');
variable_set("upload_extensions_default", 'jpg jpeg gif png txt doc xls pdf ppt pps odt ods odp');
variable_set("upload_image_gallery", '1');
variable_set("upload_jqt_event", '1');
variable_set("upload_list_default", '0');
variable_set("upload_max_resolution", '0');
variable_set("upload_uploadsize_default", '7');
variable_set("upload_usersize_default", '100');
variable_set("user_email_verification", true);


/********************************
 *      CUSTOM NODE TYPES       *
 ********************************/
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('event', 'Event', 'node', 'Basic event type', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('page', 'Page', 'node', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', 'page')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('story', 'Story', 'node', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', 'story')");


/********************************
 *    ROLES AND PERMISSIONS     *
 ********************************/
$roles_map[1] = install_add_role('anonymous user');
install_add_permissions($roles_map[1], array ( 0 => 'access content', ));

$roles_map[2] = install_add_role('authenticated user');
install_add_permissions($roles_map[2], array ( 0 => 'access comments', 1 => 'access content', 2 => 'post comments', 3 => 'post comments without approval', ));



/********************************
 *     FILTERS AND FORMATS      *
 ********************************/
$formats_map[1] = install_add_format('Filtered HTML', '1');
install_add_format(array ( $roles_map[1], $roles_map[2],), $formats_map[1]);
$formats_map[2] = install_add_format('Full HTML', '1');
install_add_format(array (), $formats_map[2]);
install_set_filter($formats_map[1], 'filter', '2', '0');
install_set_filter($formats_map[1], 'filter', '0', '1');
install_set_filter($formats_map[1], 'filter', '1', '2');
install_set_filter($formats_map[1], 'filter', '3', '10');
install_set_filter($formats_map[2], 'filter', '2', '0');
install_set_filter($formats_map[2], 'filter', '1', '1');
install_set_filter($formats_map[2], 'filter', '3', '10');


/********************************
 *            VIEWS             *
 ********************************/
module_load_include('inc', 'views', 'includes/view');

/********************************
 *      VIEW: EVENTS_LIST       *
 ********************************/
$view = new view;
$view->name = 'events_list';
$view->description = 'Events list';
$view->tag = 'events';
$view->view_php = '';
$view->base_table = 'node';
$view->is_cacheable = FALSE;
$view->api_version = 2;
$view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
$handler = $view->new_display('default', 'Defaults', 'default');
$handler->override_option('fields', array( 'field_date_value' => array( 'label' => '', 'alter' => array( 'alter_text' => 0, 'text' => '', 'make_link' => 0, 'path' => '', 'link_class' => '', 'alt' => '', 'prefix' => '', 'suffix' => '', 'target' => '', 'help' => '', 'trim' => 0, 'max_length' => '', 'word_boundary' => 1, 'ellipsis' => 1, 'html' => 0, 'strip_tags' => 1, ), 'empty' => '', 'hide_empty' => 0, 'empty_zero' => 0, 'link_to_node' => 0, 'label_type' => 'none', 'format' => 'datetime', 'multiple' => array( 'multiple_number' => '', 'multiple_from' => '', 'multiple_to' => '', 'group' => '', ), 'repeat' => array( 'show_repeat_rule' => '', ), 'fromto' => array( 'fromto' => 'both', ), 'exclude' => 1, 'id' => 'field_date_value', 'table' => 'node_data_field_date', 'field' => 'field_date_value', 'relationship' => 'none', ), 'title' => array( 'label' => '', 'alter' => array( 'alter_text' => 0, 'text' => '', 'make_link' => 0, 'path' => '', 'link_class' => '', 'alt' => '', 'prefix' => '', 'suffix' => '', 'target' => '', 'help' => '', 'trim' => 0, 'max_length' => '', 'word_boundary' => 1, 'ellipsis' => 1, 'html' => 0, 'strip_tags' => 1, ), 'empty' => '', 'hide_empty' => 0, 'empty_zero' => 0, 'link_to_node' => 0, 'exclude' => 0, 'id' => 'title', 'table' => 'node', 'field' => 'title', 'relationship' => 'none', ), ));
$handler->override_option('sorts', array( 'field_date_value' => array( 'order' => 'ASC', 'delta' => -1, 'id' => 'field_date_value', 'table' => 'node_data_field_date', 'field' => 'field_date_value', 'relationship' => 'none', ), ));
$handler->override_option('filters', array( 'status' => array( 'operator' => '=', 'value' => '1', 'group' => '0', 'exposed' => FALSE, 'expose' => array( 'operator' => FALSE, 'label' => '', ), 'id' => 'status', 'table' => 'node', 'field' => 'status', 'relationship' => 'none', ), 'type' => array( 'operator' => 'in', 'value' => array( 'event' => 'event', ), 'group' => '0', 'exposed' => FALSE, 'expose' => array( 'operator' => FALSE, 'label' => '', ), 'id' => 'type', 'table' => 'node', 'field' => 'type', 'relationship' => 'none', ), ));
$handler->override_option('access', array( 'type' => 'none', ));
$handler->override_option('cache', array( 'type' => 'none', ));
$handler->override_option('items_per_page', 0);
$handler = $view->new_display('page', 'Page', 'page_1');
$handler->override_option('path', 'calendar');
$handler->override_option('menu', array( 'type' => 'normal', 'title' => 'Calendar', 'description' => 'calendar', 'weight' => '0', 'name' => 'primary-links', ));
$handler->override_option('tab_options', array( 'type' => 'none', 'title' => '', 'description' => '', 'weight' => 0, 'name' => 'navigation', ));
$view->save();


/********************************
 *            MENUS             *
 ********************************/
$mlids = array();
/********************************
 *       MENU: NAVIGATION        *
 ********************************/
$menu_name = install_menu_create_menu('Navigation', 'navigation', 'The navigation menu is provided by Drupal and is the main interactive menu for any site. It is usually the only menu that contains personalized links for authenticated users, and is often not even visible to anonymous users.');

$mlids["navigation_kids"] = 0;
$mlids["navigation_kids_0"] = install_menu_create_menu_item('batch', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_1"] = install_menu_create_menu_item('node', 'Content', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_2"] = install_menu_create_menu_item('logout', 'Log out', 0, $menu_name, $mlids["navigation_kids"], '10', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_3"] = install_menu_create_menu_item('rss.xml', 'RSS feed', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_4"] = install_menu_create_menu_item('user', 'User account', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_5"] = install_menu_create_menu_item('node/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_6"] = install_menu_create_menu_item('filter/tips', 'Compose tips', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '1', FALSE, '0', '0', '0');
$mlids["navigation_kids_7"] = install_menu_create_menu_item('system/files', 'File download', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_8"] = install_menu_create_menu_item('user/autocomplete', 'User autocomplete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_9"] = install_menu_create_menu_item('user/%', 'My account', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '1', TRUE, '0', '1', '0');
$mlids["navigation_kids_9_0"] = install_menu_create_menu_item('user/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids_9"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_10"] = install_menu_create_menu_item('js/formatters/autocomplete', 'Formatters autocomplete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_11"] = install_menu_create_menu_item('node/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '1', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_12"] = install_menu_create_menu_item('admin/build/menu-customize/%/delete', 'Delete menu', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_13"] = install_menu_create_menu_item('user/reset/%/%/%', 'Reset password', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_14"] = install_menu_create_menu_item('node/%/revisions/%/delete', 'Delete earlier revision', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_15"] = install_menu_create_menu_item('node/%/revisions/%/revert', 'Revert to earlier revision', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_16"] = install_menu_create_menu_item('node/%/revisions/%/view', 'Revisions', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_17"] = install_menu_create_menu_item('admin/content/node-type/page/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_18"] = install_menu_create_menu_item('admin/content/node-type/story/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_19"] = install_menu_create_menu_item('upload/js', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_20"] = install_menu_create_menu_item('admin/content/node-type/event/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_21"] = install_menu_create_menu_item('user/timezone', 'User timezone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_22"] = install_menu_create_menu_item('admin/content/node-type/event/fields/field_date/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_23"] = install_menu_create_menu_item('admin/build/toolbar/%/shortcut/%/delete', 'Delete shortcut', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_24"] = install_menu_create_menu_item('admin/build/toolbar/%/shortcut/%/edit', 'Edit shortcut', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_25"] = install_menu_create_menu_item('content/js_add_more', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_26"] = install_menu_create_menu_item('filefield/progress', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_27"] = install_menu_create_menu_item('filefield/ahah/%/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_28"] = install_menu_create_menu_item('js/formatters/preview', 'Formatters preview', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_29"] = install_menu_create_menu_item('js/formatters/tokens', 'Formatters tokens', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_30"] = install_menu_create_menu_item('admin/content/node-type/page/fields/field_audio/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_31"] = install_menu_create_menu_item('admin/content/node-type/page/fields/field_video/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_32"] = install_menu_create_menu_item('admin/content/node-type/page/fields/field_icon/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_33"] = install_menu_create_menu_item('admin/content/node-type/page/fields/field_images/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_34"] = install_menu_create_menu_item('flexifield/test', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_35"] = install_menu_create_menu_item('views/ajax', 'Views', 'Ajax callback for view loading.', $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_36"] = install_menu_create_menu_item('search/advanced_help/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_37"] = install_menu_create_menu_item('help/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_38"] = install_menu_create_menu_item('flexifield/ahah/addmore', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_39"] = install_menu_create_menu_item('flexifield/ahah/changetype', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_40"] = install_menu_create_menu_item('advanced_help/search/%', 'Search help', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_41"] = install_menu_create_menu_item('ctools/autocomplete/node', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_42"] = install_menu_create_menu_item('ctools/context/ajax/add', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_43"] = install_menu_create_menu_item('ctools/context/ajax/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_44"] = install_menu_create_menu_item('ctools/context/ajax/configure', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_45"] = install_menu_create_menu_item('ctools/context/ajax/access/configure', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_46"] = install_menu_create_menu_item('ctools/context/ajax/access/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_47"] = install_menu_create_menu_item('ctools/context/ajax/access/add', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48"] = install_menu_create_menu_item('admin', 'Administer', 0, $menu_name, $mlids["navigation_kids"], '9', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_0"] = install_menu_create_menu_item('admin/compact', 'Compact mode', 0, $menu_name, $mlids["navigation_kids_48"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_1"] = install_menu_create_menu_item('admin/advanced_help', 'Help', 0, $menu_name, $mlids["navigation_kids_48"], '9', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_2"] = install_menu_create_menu_item('admin/views/ajax/autocomplete/user', '', 0, $menu_name, $mlids["navigation_kids_48"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_3"] = install_menu_create_menu_item('admin/views/ajax/autocomplete/tag', '', 0, $menu_name, $mlids["navigation_kids_48"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4"] = install_menu_create_menu_item('admin/content', 'Content management', 'Manage your site\'s content.', $menu_name, $mlids["navigation_kids_48"], '-10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_4_0"] = install_menu_create_menu_item('admin/content/node', 'Content', 'View, edit, and delete your site\'s content.', $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_1"] = install_menu_create_menu_item('admin/content/types', 'Content types', 'Manage posts by content type, including default status, front page promotion, etc.', $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_2"] = install_menu_create_menu_item('admin/content/node-settings', 'Post settings', 'Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.', $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_4_2_0"] = install_menu_create_menu_item('admin/content/node-settings/rebuild', 'Rebuild permissions', 0, $menu_name, $mlids["navigation_kids_48_4_2"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_3"] = install_menu_create_menu_item('admin/content/rss-publishing', 'RSS publishing', 'Configure the number of items per feed and whether feeds should be titles/teasers/full-text.', $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_4"] = install_menu_create_menu_item('admin/content/node-type/page', 'Page', 0, $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_5"] = install_menu_create_menu_item('admin/content/node-type/story', 'Story', 0, $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_4_6"] = install_menu_create_menu_item('admin/content/node-type/event', 'Event', 0, $menu_name, $mlids["navigation_kids_48_4"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5"] = install_menu_create_menu_item('admin/reports', 'Reports', 'View reports from system logs and other status information.', $menu_name, $mlids["navigation_kids_48"], '5', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_5_0"] = install_menu_create_menu_item('admin/reports/status', 'Status report', 'Get a status report about your site\'s operation and any detected problems.', $menu_name, $mlids["navigation_kids_48_5"], '10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_5_0_0"] = install_menu_create_menu_item('admin/reports/status/php', 'PHP', 0, $menu_name, $mlids["navigation_kids_48_5_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_0_1"] = install_menu_create_menu_item('admin/reports/status/run-cron', 'Run cron', 0, $menu_name, $mlids["navigation_kids_48_5_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_0_2"] = install_menu_create_menu_item('admin/reports/status/sql', 'SQL', 0, $menu_name, $mlids["navigation_kids_48_5_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_1"] = install_menu_create_menu_item('admin/reports/dblog', 'Recent log entries', 'View events that have recently been logged.', $menu_name, $mlids["navigation_kids_48_5"], '-1', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_2"] = install_menu_create_menu_item('admin/reports/browscap', 'Browscap', 'Browser-specific site statistics.', $menu_name, $mlids["navigation_kids_48_5"], '5', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_3"] = install_menu_create_menu_item('admin/reports/access-denied', 'Top \'access denied\' errors', 'View \'access denied\' errors (403s).', $menu_name, $mlids["navigation_kids_48_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_4"] = install_menu_create_menu_item('admin/reports/page-not-found', 'Top \'page not found\' errors', 'View \'page not found\' errors (404s).', $menu_name, $mlids["navigation_kids_48_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_5"] = install_menu_create_menu_item('admin/reports/event/%', 'Details', 0, $menu_name, $mlids["navigation_kids_48_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_5_6"] = install_menu_create_menu_item('admin/reports/updates', 'Available updates', 'Get a status report about available updates for your installed modules and themes.', $menu_name, $mlids["navigation_kids_48_5"], '10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_5_6_0"] = install_menu_create_menu_item('admin/reports/updates/check', 'Manual update check', 0, $menu_name, $mlids["navigation_kids_48_5_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6"] = install_menu_create_menu_item('admin/build', 'Site building', 'Control how your site looks and feels.', $menu_name, $mlids["navigation_kids_48"], '-10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_0"] = install_menu_create_menu_item('admin/build/block', 'Blocks', 'Configure what block content appears in your site\'s sidebars and other regions.', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_0_0"] = install_menu_create_menu_item('admin/build/block/delete-menu-block', 'Delete menu block', 0, $menu_name, $mlids["navigation_kids_48_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_0_1"] = install_menu_create_menu_item('admin/build/block/configure', 'Configure block', 0, $menu_name, $mlids["navigation_kids_48_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_0_2"] = install_menu_create_menu_item('admin/build/block/delete', 'Delete block', 0, $menu_name, $mlids["navigation_kids_48_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_0_3"] = install_menu_create_menu_item('admin/build/block/list/js', 'JavaScript List Form', 0, $menu_name, $mlids["navigation_kids_48_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_1"] = install_menu_create_menu_item('admin/build/modules', 'Modules', 'Enable or disable add-on modules for your site.', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_1_0"] = install_menu_create_menu_item('admin/build/modules/list/confirm', 'List', 0, $menu_name, $mlids["navigation_kids_48_6_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_1_1"] = install_menu_create_menu_item('admin/build/modules/uninstall/confirm', 'Uninstall', 0, $menu_name, $mlids["navigation_kids_48_6_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_2"] = install_menu_create_menu_item('admin/build/themes', 'Themes', 'Change which theme your site uses or allows users to set.', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_3"] = install_menu_create_menu_item('admin/build/toolbar', 'Toolbar', 'Configure toolbars', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_3_0"] = install_menu_create_menu_item('admin/build/toolbar/%/edit', 'Edit ', 0, $menu_name, $mlids["navigation_kids_48_6_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_3_1"] = install_menu_create_menu_item('admin/build/toolbar/%/delete', 'Delete toolbar', 0, $menu_name, $mlids["navigation_kids_48_6_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_3_2"] = install_menu_create_menu_item('admin/build/toolbar/%/shortcut', '', 'Preview and order the shortcuts in toolbar.', $menu_name, $mlids["navigation_kids_48_6_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_3_3"] = install_menu_create_menu_item('admin/build/toolbar/%/export', '', 0, $menu_name, $mlids["navigation_kids_48_6_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_4"] = install_menu_create_menu_item('admin/build/menu-customize/%', 'Customize menu', 0, $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_5"] = install_menu_create_menu_item('admin/build/views1/convert', 'Convert view', 0, $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_6"] = install_menu_create_menu_item('admin/build/views1/delete', 'Delete view', 0, $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7"] = install_menu_create_menu_item('admin/build/views', 'Views', 'Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_0"] = install_menu_create_menu_item('admin/build/views/%/preview/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_1"] = install_menu_create_menu_item('admin/build/views/%/%/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_2"] = install_menu_create_menu_item('admin/build/views/%/analyze/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_3"] = install_menu_create_menu_item('admin/build/views/%/details/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_4"] = install_menu_create_menu_item('admin/build/views/%/add-display/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_5"] = install_menu_create_menu_item('admin/build/views/break-lock/%', 'Delete view', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_6"] = install_menu_create_menu_item('admin/build/views/delete/%', 'Delete view', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_7"] = install_menu_create_menu_item('admin/build/views/export/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_8"] = install_menu_create_menu_item('admin/build/views/clone/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_9"] = install_menu_create_menu_item('admin/build/views/disable/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_7_10"] = install_menu_create_menu_item('admin/build/views/enable/%', '', 0, $menu_name, $mlids["navigation_kids_48_6_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8"] = install_menu_create_menu_item('admin/build/menu', 'Menus', 'Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.', $menu_name, $mlids["navigation_kids_48_6"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_0"] = install_menu_create_menu_item('admin/build/menu/item/%/delete', 'Delete menu item', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_1"] = install_menu_create_menu_item('admin/build/menu/item/%/edit', 'Edit menu item', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_2"] = install_menu_create_menu_item('admin/build/menu/item/%/reset', 'Reset menu item', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_3"] = install_menu_create_menu_item('admin/build/menu-customize/navigation', 'Navigation', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_4"] = install_menu_create_menu_item('admin/build/menu-customize/primary-links', 'Tab Bar', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_6_8_5"] = install_menu_create_menu_item('admin/build/menu-customize/secondary-links', 'Secondary links', 0, $menu_name, $mlids["navigation_kids_48_6_8"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7"] = install_menu_create_menu_item('admin/settings', 'Site configuration', 'Adjust basic site configuration options.', $menu_name, $mlids["navigation_kids_48"], '-5', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_0"] = install_menu_create_menu_item('admin/settings/actions', 'Actions', 'Manage the actions defined for your site.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_0_0"] = install_menu_create_menu_item('admin/settings/actions/configure', 'Configure an advanced action', 0, $menu_name, $mlids["navigation_kids_48_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_0_1"] = install_menu_create_menu_item('admin/settings/actions/orphan', 'Remove orphans', 0, $menu_name, $mlids["navigation_kids_48_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_0_2"] = install_menu_create_menu_item('admin/settings/actions/delete/%', 'Delete action', 'Delete an action.', $menu_name, $mlids["navigation_kids_48_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_1"] = install_menu_create_menu_item('admin/settings/admin', 'Administration theme', 'Settings for how your administrative pages should look.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_2"] = install_menu_create_menu_item('admin/settings/clean-urls', 'Clean URLs', 'Enable or disable clean URLs for your site.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_2_0"] = install_menu_create_menu_item('admin/settings/clean-urls/check', 'Clean URL check', 0, $menu_name, $mlids["navigation_kids_48_7_2"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_3"] = install_menu_create_menu_item('admin/settings/date-time', 'Date and time', 'Settings for how Drupal displays date and time, as well as the system\'s default timezone.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_3_0"] = install_menu_create_menu_item('admin/settings/date-time/lookup', 'Date and time lookup', 0, $menu_name, $mlids["navigation_kids_48_7_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_3_1"] = install_menu_create_menu_item('admin/settings/date-time/delete/%', 'Delete date format type', 'Allow users to delete a configured date format type.', $menu_name, $mlids["navigation_kids_48_7_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_3_2"] = install_menu_create_menu_item('admin/settings/date-time/formats/lookup', 'Date and time lookup', 0, $menu_name, $mlids["navigation_kids_48_7_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_3_3"] = install_menu_create_menu_item('admin/settings/date-time/formats/delete/%', 'Delete date format', 'Allow users to delete a configured date format.', $menu_name, $mlids["navigation_kids_48_7_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_4"] = install_menu_create_menu_item('admin/settings/error-reporting', 'Error reporting', 'Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_5"] = install_menu_create_menu_item('admin/settings/file-system', 'File system', 'Tell Drupal where to store uploaded files and how they are accessed.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_6"] = install_menu_create_menu_item('admin/settings/image-toolkit', 'Image toolkit', 'Choose which image toolkit to use if you have installed optional toolkits.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_7"] = install_menu_create_menu_item('admin/settings/filters', 'Input formats', 'Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_7_0"] = install_menu_create_menu_item('admin/settings/filters/%', '', 0, $menu_name, $mlids["navigation_kids_48_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_7_1"] = install_menu_create_menu_item('admin/settings/filters/delete', 'Delete input format', 0, $menu_name, $mlids["navigation_kids_48_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_8"] = install_menu_create_menu_item('admin/settings/performance', 'Performance', 'Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_9"] = install_menu_create_menu_item('admin/settings/browscap', 'Browscap', 'Enable browscap site statistics.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_9_0"] = install_menu_create_menu_item('admin/settings/browscap/refresh', 'Browscap Refresh', 0, $menu_name, $mlids["navigation_kids_48_7_9"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_10"] = install_menu_create_menu_item('admin/settings/site-information', 'Site information', 'Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_11"] = install_menu_create_menu_item('admin/settings/site-maintenance', 'Site maintenance', 'Take the site off-line for maintenance or bring it back online.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_12"] = install_menu_create_menu_item('admin/settings/toolbar', 'Toolbar settings', 0, $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_13"] = install_menu_create_menu_item('admin/settings/mobile-tools', 'Mobile Tools', 'Configure the detection of the mobile client and the appropriate actions.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_14"] = install_menu_create_menu_item('admin/settings/menu_block', 'Menu block', 'Configure menu block.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_15"] = install_menu_create_menu_item('admin/settings/uploads', 'File uploads', 'Control how files may be attached to content.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_16"] = install_menu_create_menu_item('admin/settings/html_export_appcms', 'HTML Export (Modified)', 'Export your drupal site to static html page', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_17"] = install_menu_create_menu_item('admin/settings/formatters', 'Custom Formatters', 'Configure custom CCK formatter templates.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_17_0"] = install_menu_create_menu_item('admin/settings/formatters/clone/%', '', 'Clone a custom CCK formatter.', $menu_name, $mlids["navigation_kids_48_7_17"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_17_1"] = install_menu_create_menu_item('admin/settings/formatters/delete/%', '', 'Delete a custom CCK formatter.', $menu_name, $mlids["navigation_kids_48_7_17"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_17_2"] = install_menu_create_menu_item('admin/settings/formatters/edit/%', '', 'Edit a custom CCK formatter.', $menu_name, $mlids["navigation_kids_48_7_17"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_17_3"] = install_menu_create_menu_item('admin/settings/formatters/export/%', '', 'Export a custom CCK formatter.', $menu_name, $mlids["navigation_kids_48_7_17"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_18"] = install_menu_create_menu_item('admin/settings/jquery_update_appcms', 'jQuery Update (Modified)', 'Configure settings for jQuery Update module.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_19"] = install_menu_create_menu_item('admin/settings/profile-generator', 'Generate installation profile', 'Generate a Drupal installation profile', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_7_20"] = install_menu_create_menu_item('admin/settings/logging', 'Logging and alerts', 'Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.', $menu_name, $mlids["navigation_kids_48_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_7_20_0"] = install_menu_create_menu_item('admin/settings/logging/dblog', 'Database logging', 'Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.', $menu_name, $mlids["navigation_kids_48_7_20"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8"] = install_menu_create_menu_item('admin/user', 'User management', 'Manage your site\'s users, groups and access to site features.', $menu_name, $mlids["navigation_kids_48"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_8_0"] = install_menu_create_menu_item('admin/user/rules', 'Access rules', 'List and create rules to disallow usernames, e-mail addresses, and IP addresses.', $menu_name, $mlids["navigation_kids_48_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_8_0_0"] = install_menu_create_menu_item('admin/user/rules/delete', 'Delete rule', 0, $menu_name, $mlids["navigation_kids_48_8_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8_0_1"] = install_menu_create_menu_item('admin/user/rules/edit', 'Edit rule', 0, $menu_name, $mlids["navigation_kids_48_8_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8_1"] = install_menu_create_menu_item('admin/user/permissions', 'Permissions', 'Determine access to features by selecting permissions for roles.', $menu_name, $mlids["navigation_kids_48_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8_2"] = install_menu_create_menu_item('admin/user/roles', 'Roles', 'List, edit, or add user roles.', $menu_name, $mlids["navigation_kids_48_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_48_8_2_0"] = install_menu_create_menu_item('admin/user/roles/edit', 'Edit role', 0, $menu_name, $mlids["navigation_kids_48_8_2"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8_3"] = install_menu_create_menu_item('admin/user/settings', 'User settings', 'Configure default behavior of users, including registration requirements, e-mails, and user pictures.', $menu_name, $mlids["navigation_kids_48_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_48_8_4"] = install_menu_create_menu_item('admin/user/user', 'Users', 'List, add, and edit users.', $menu_name, $mlids["navigation_kids_48_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_49"] = install_menu_create_menu_item('node/add', 'Create content', 0, $menu_name, $mlids["navigation_kids"], '1', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_49_0"] = install_menu_create_menu_item('node/add/page', 'Page', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.', $menu_name, $mlids["navigation_kids_49"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_49_1"] = install_menu_create_menu_item('node/add/story', 'Story', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.', $menu_name, $mlids["navigation_kids_49"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_49_2"] = install_menu_create_menu_item('node/add/event', 'Event', 'Basic event type', $menu_name, $mlids["navigation_kids_49"], '0', 'system', '0', FALSE, '0', '0', '0');
/********************************
 *        MENU: TAB BAR         *
 ********************************/
$menu_name = install_menu_create_menu('Tab Bar', 'primary-links', 'These appear at the bottom of the screen as the main sections of the app');

$mlids["primary-links_kids"] = 0;
$mlids["primary-links_kids_0"] = install_menu_create_menu_item('node/9', 'Home', '', $menu_name, $mlids["primary-links_kids"], '-50', 'menu', '1', FALSE, '0', '1', '0');
$mlids["primary-links_kids_1"] = install_menu_create_menu_item('node/8', 'About', 'About', $menu_name, $mlids["primary-links_kids"], '-45', 'menu', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_2"] = install_menu_create_menu_item('node/7', 'Dates', 'Dates', $menu_name, $mlids["primary-links_kids"], '-47', 'menu', '1', FALSE, '0', '1', '0');
$mlids["primary-links_kids_3"] = install_menu_create_menu_item('calendar', 'Calendar', 'calendar', $menu_name, $mlids["primary-links_kids"], '-46', 'system', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_4"] = install_menu_create_menu_item('node/1', 'Introduction', 'Introduction', $menu_name, $mlids["primary-links_kids"], '-49', 'menu', '0', TRUE, '0', '1', '0');
$mlids["primary-links_kids_4_0"] = install_menu_create_menu_item('node/2', 'Text', 'Text', $menu_name, $mlids["primary-links_kids_4"], '0', 'menu', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_5"] = install_menu_create_menu_item('node/4', 'Media', 'Media', $menu_name, $mlids["primary-links_kids"], '-48', 'menu', '0', TRUE, '0', '1', '0');
$mlids["primary-links_kids_5_0"] = install_menu_create_menu_item('node/6', 'Video', 'Video', $menu_name, $mlids["primary-links_kids_5"], '0', 'menu', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_5_1"] = install_menu_create_menu_item('node/5', 'Audio', 'Audio', $menu_name, $mlids["primary-links_kids_5"], '0', 'menu', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_5_2"] = install_menu_create_menu_item('node/3', 'Image', 'Image', $menu_name, $mlids["primary-links_kids_5"], '0', 'menu', '0', FALSE, '0', '1', '0');


/********************************
 *       BLOCKS AND BOXES        *
 ********************************/
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'garland', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[1] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'garland', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[2] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'garland', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[3] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[4] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[5] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'iwebkit', 'status' => '1', 'weight' => '-5', 'region' => 'footer_top', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[6] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-3', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[7] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-2', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[8] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-4', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[9] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '-1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[10] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[11] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'iwebkit', 'status' => '0', 'weight' => '1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[12] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'iui', 'status' => '0', 'weight' => '-3', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[13] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'iui', 'status' => '0', 'weight' => '-2', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[14] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'iui', 'status' => '0', 'weight' => '-4', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[15] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'iui', 'status' => '0', 'weight' => '-1', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[16] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'iui', 'status' => '0', 'weight' => '-5', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[17] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'iui', 'status' => '0', 'weight' => '-5', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[18] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'iui', 'status' => '1', 'weight' => '-5', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[19] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'iui', 'status' => '0', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[20] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'iui', 'status' => '0', 'weight' => '1', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[21] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[22] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[23] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-4', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[24] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'appcms', 'status' => '0', 'weight' => '-3', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[25] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'appcms', 'status' => '0', 'weight' => '-2', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[26] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[27] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'appcms', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[28] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'appcms', 'status' => '0', 'weight' => '1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[29] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'appcms', 'status' => '1', 'weight' => '-5', 'region' => 'block_area', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[30] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[31] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[32] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[33] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[34] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[35] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[36] = install_create_block($block);
$block = (object) array ( 'module' => 'menu_block', 'delta' => '1', 'theme' => 'appcms', 'status' => '1', 'weight' => '0', 'region' => 'block_area', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => 'Section Navigation', 'cache' => '-1', );
$block_map[37] = install_create_block($block);
$block = (object) array ( 'module' => 'menu_block', 'delta' => '1', 'theme' => 'garland', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => 'Section Navigation', 'cache' => '-1', );
$block_map[38] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'seven', 'status' => '0', 'weight' => '-3', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[39] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'seven', 'status' => '0', 'weight' => '-2', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[40] = install_create_block($block);
$block = (object) array ( 'module' => 'menu_block', 'delta' => '1', 'theme' => 'seven', 'status' => '1', 'weight' => '0', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[41] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-4', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[42] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-1', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[43] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[44] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[45] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'seven', 'status' => '1', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[46] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'seven', 'status' => '0', 'weight' => '0', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[47] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'seven', 'status' => '0', 'weight' => '1', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[48] = install_create_block($block);


}