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
  return array (
    'block',
    'filter',
    'node',
    'system',
    'user',
    'dblog',

    'menu',
    'upload',
    'toolbar',
    'update',
    'content',

    'install_profile_api',
    'views',
    'views_ui',
    'admin_theme',
    'ahah_response',
    'ctools',
    'token',
    'date',
    'date_api',
    'date_timezone',
    'filefield',
    'flexifield',
    'automenu',
    'menu_block',
    'custom_formatters',

    'html_export_appcms',
    'jquery_update_appcms',
		);
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
variable_set("clean_url", 1);
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
//variable_set("jquery_update_appcms_replace", false);
variable_set("jquery_update_compression_type", 'min');
variable_set("jquery_update_replace", true);
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
variable_set("site_frontpage", 'node/1');
variable_set("site_frontpage_mobile", 'node');
variable_set("site_mail", 'appcms@example.com');
variable_set("site_mission", '');
variable_set("site_name", 'AppCMS');
variable_set("site_slogan", '');
variable_set("theme_appcms_settings", array ( 'toggle_logo' => 0, 'toggle_name' => 0, 'toggle_slogan' => 0, 'toggle_mission' => 0, 'toggle_node_user_picture' => 0, 'toggle_comment_user_picture' => 0, 'toggle_search' => 0, 'toggle_favicon' => 1, 'toggle_primary_links' => 1, 'toggle_secondary_links' => 0, 'default_logo' => 0, 'logo_path' => '', 'logo_upload' => '', 'default_favicon' => 1, 'favicon_path' => '', 'favicon_upload' => '', 'appcms_theme' => 'apple', ));
system_theme_data();
variable_set("theme_default", 'appcms');
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
  // Insert default user-defined node types into the database. For a complete
  // list of available node type attributes, refer to the node type API
  // documentation at: http://api.drupal.org/api/HEAD/function/hook_node_info.
  $types = array(
    array(
      'type' => 'page',
      'name' => st('Page'),
      'module' => 'node',
      'description' => st("A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site's initial home page."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
    array(
      'type' => 'story',
      'name' => st('Story'),
      'module' => 'node',
      'description' => st("A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site's initial home page, and provides the ability to post comments."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
    array(
      'type' => 'event',
      'name' => st('Event'),
      'module' => 'node',
      'description' => st("An <em>event</em>, is ideal for creating and displaying content that uses or relates to a specific date and/or time"),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
  );

  foreach ($types as $type) {
    $type = (object) _node_type_set_defaults($type);
    node_type_save($type);
  }

// db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('event', 'Event', 'node', 'Basic event type', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");
// db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('page', 'Page', 'node', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', 'page')");
// db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('story', 'Story', 'node', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', 'story')");


/********************************
 *     CUSTOM FIELD TYPES       *
 ********************************/
db_query("INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES ('field_video', 'filefield', '%s', 0, 0, 1, 'filefield', '%s', 1, 0)", 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}','a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}');
db_query("INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES ('field_audio', 'filefield', '%s', 0, 0, 1, 'filefield', '%s', 1, 0)", 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}','a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}');
db_query("INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES ('field_images', 'filefield', '%s', 0, 1, 0, 'filefield', '%s', 1, 0)", 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}','a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}');
db_query("INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES ('field_icon', 'filefield', '%s', 0, 0, 1, 'filefield', '%s', 1, 0)", 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}', 'a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}');
db_query("INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES ('field_date', 'date', '%s', 1, 0, 1, 'date', '%s', 1, 0)", 'a:7:{s:11:"granularity";a:5:{s:4:"year";s:4:"year";s:5:"month";s:5:"month";s:3:"day";s:3:"day";s:4:"hour";s:4:"hour";s:6:"minute";s:6:"minute";}s:11:"timezone_db";s:3:"UTC";s:11:"tz_handling";s:4:"site";s:6:"todate";s:0:"";s:6:"repeat";i:0;s:16:"repeat_collapsed";s:0:"";s:14:"default_format";s:8:"datetime";}', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:20;s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}');

/********************************
 *    CUSTOM FIELD INSTANCES    *
 ********************************/
db_query("INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES ('field_audio', 'page', -1, 'Audio', 'filefield_widget', '%s', '%s', 'Upload audio to embed it in this page', 'filefield', 1)", 'a:5:{s:15:"file_extensions";s:15:"mp3 ogg wav m4a";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";}', 'a:8:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"hidden";}s:6:"teaser";a:2:{s:6:"format";s:28:"custom_formatters_html5audio";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:28:"custom_formatters_html5audio";s:7:"exclude";i:0;}s:12:"mobile_tools";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}');

db_query("INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES ('field_video', 'page', 0, 'Video', 'filefield_widget', '%s', '%s', 'Upload video to embed it in this page', 'filefield', 1)", 'a:5:{s:15:"file_extensions";s:20:"mp4 m4v ogv webm mov";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";}', 'a:8:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"hidden";}s:6:"teaser";a:2:{s:6:"format";s:28:"custom_formatters_html5video";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:28:"custom_formatters_html5video";s:7:"exclude";i:0;}s:12:"mobile_tools";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}');

db_query("INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES ('field_icon', 'page', 2, 'Icon', 'filefield_widget', '%s', '%s', 'Upload an icon to use in the Tab Bar. This is only required for the main sections.', 'filefield', 1)", 'a:5:{s:15:"file_extensions";s:3:"png";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";}', 'a:8:{s:6:"weight";s:1:"2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:12:"mobile_tools";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}');

db_query("INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES ('field_images', 'page', 1, 'Images', 'filefield_widget', '%s', '%s', 'Upload images you would like to appear in your gallery', 'filefield', 1)", 'a:5:{s:15:"file_extensions";s:16:"jpg png gif jpeg";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";}', 'a:8:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"hidden";}s:6:"teaser";a:2:{s:6:"format";s:31:"custom_formatters_image_gallery";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:31:"custom_formatters_image_gallery";s:7:"exclude";i:0;}s:12:"mobile_tools";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}');

db_query("INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES ('field_date', 'event', -4, 'Date', 'date_select', '%s', '%s', '', 'date', 1)", 'a:10:{s:13:"default_value";s:5:"blank";s:18:"default_value_code";s:0:"";s:14:"default_value2";s:4:"same";s:19:"default_value_code2";s:0:"";s:12:"input_format";s:11:"Y-m-d H:i:s";s:19:"input_format_custom";s:0:"";s:9:"increment";s:1:"5";s:10:"text_parts";a:0:{}s:10:"year_range";s:5:"-3:+3";s:14:"label_position";s:5:"above";}', 'a:6:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:12:"mobile_tools";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}');



/********************************
 *      CUSTOM FORMATTERS       *
 *******************************/
db_query("INSERT INTO `formatters` (`name`, `label`, `field_types`, `multiple`, `description`, `mode`, `code`) VALUES ('html5audio', 'Audio', '%s', 0, 'Field to allow HTML 5 audio embedding', 'basic', 0x3c64697620636c6173733d2268746d6c352d617564696f2d706c61796572223e0d0a3c617564696f20636f6e74726f6c73207072656c6f61643d226175746f22206175746f6275666665723e200d0a20203c736f75726365207372633d225b736974652d75726c5d2f5b66696c656669656c642d66696c65706174685d22202f3e0d0a3c2f617564696f3e0d0a3c2f6469763e)", 'a:1:{i:0;s:9:"filefield";}');

db_query("INSERT INTO `formatters` (`name`, `label`, `field_types`, `multiple`, `description`, `mode`, `code`) VALUES ('html5video', 'Video', '%s', 0, 'Field to allow HTML 5 video embedding', 'basic', 0x3c64697620636c6173733d2268746d6c352d766964656f2d706c61796572223e0d0a3c766964656f20636f6e74726f6c73207072656c6f61643d226175746f22206175746f6275666665723e200d0a20203c736f75726365207372633d225b736974652d75726c5d2f5b66696c656669656c642d66696c65706174685d222020747970653d27766964656f2f6d70343b20636f646563733d22617663312e3432453031452c206d7034612e34302e32223b273e0d0a3c2f766964656f3e0d0a3c2f6469763e)", 'a:1:{i:0;s:9:"filefield";}');


db_query("INSERT INTO `formatters` (`name`, `label`, `field_types`, `multiple`, `description`, `mode`, `code`) VALUES ('image_gallery', 'Image Gallery', '%s', 1, 'JavaScript gallery of images', 'advanced', 0x6966202820636f756e742824656c656d656e745b27236e6f6465275d2d3e6669656c645f696d6167657329203e20302026262069735f61727261792824656c656d656e745b27236e6f6465275d2d3e6669656c645f696d616765735b305d2929207b0d0a246f7574707574203d20273c73637269707420747970653d22746578742f6a617661736372697074223e272e225c6e223b0d0a246f7574707574202e3d20276a51542e67656e657261746547616c6c657279282267616c6c65727927202e2024656c656d656e745b27236e6f6465275d2d3e6e6964202e2027222c205b272e225c6e223b0d0a666f7265616368202824656c656d656e745b27236e6f6465275d2d3e6669656c645f696d616765732061732024696d61676529207b0d0a202020246f7574707574202e3d277b7372633a2227202e2024696d6167655b2766696c6570617468275d202e2027227d2c272e225c6e223b0d0a7d0d0a246f7574707574202e3d20275d2c7b64656661756c74496e6465783a307d293b273b0d0a246f7574707574202e3d20273c2f7363726970743e272e225c6e223b0d0a246f7574707574202e3d20273c756c20636c6173733d2265646765746f65646765223e3c6c693e3c6120687265663d222367616c6c65727927202e2024656c656d656e745b27236e6f6465275d2d3e6e6964202e2027223e4c61756e63682067616c6c6572793c2f613e3c2f6c693e3c2f756c3e272e225c6e223b0d0a246f7574707574202e3d20273c2f7363726970743e272e225c6e223b0d0a72657475726e20246f75747075743b0d0a7d)", 'a:1:{i:0;s:9:"filefield";}');



/********************************
 *    ROLES AND PERMISSIONS     *
 ********************************/
$roles_map[1] = install_add_role('anonymous user');
install_add_permissions($roles_map[1], array ( 0 => 'access content', ));

$roles_map[2] = install_add_role('authenticated user');
install_add_permissions($roles_map[2], array ( 0 => 'access comments', 1 => 'access content', 2 => 'post comments', 3 => 'post comments without approval', ));

/********************************
 *     CONTENT: Intro Page      *
 ********************************/
$node = array(
  'type' => 'page',
  'title' => 'Introduction',
  'body' => 'This is the introduction page for your app',
  'field_body' => array(
    0 => array(
      'value' => '<p>This is the introduction page for your app</p>',
      'format' => 2,
    ),
  ),
  'uid' => 1,
  'status' => 1,
  'promote' => 1,
  'sticky' => 1,
  'comment' => 0,
  'format' => 2,
);
$node = (object) $node;
node_save($node);

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
// $mlids = array();

/********************************
 *        MENU: TAB BAR         *
 ********************************/
db_query("UPDATE {menu_custom} SET title='Tab Bar' WHERE menu_name='primary-links'");
// $mlids["primary-links_kids_0"] = install_menu_create_menu_item('node/2', 'Home', '', $menu_name, $mlids["primary-links_kids"], '-50', 'menu', '1', FALSE, '0', '1', '0');

/********************************
 *       BLOCKS AND BOXES        *
 ********************************/
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-5', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-4', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'appcms', 'status' => '0', 'weight' => '-3', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'appcms', 'status' => '0', 'weight' => '-2', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'appcms', 'status' => '0', 'weight' => '-1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'appcms', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'appcms', 'status' => '0', 'weight' => '1', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'appcms', 'status' => '1', 'weight' => '-5', 'region' => 'block_area', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'seven', 'status' => '0', 'weight' => '-3', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'seven', 'status' => '0', 'weight' => '-2', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'menu_block', 'delta' => '1', 'theme' => 'seven', 'status' => '1', 'weight' => '0', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'mobile_tools', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-4', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-1', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'seven', 'status' => '0', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'seven', 'status' => '1', 'weight' => '-5', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'seven', 'status' => '0', 'weight' => '0', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'seven', 'status' => '0', 'weight' => '1', 'region' => 'content', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[] = install_create_block($block);


  // Default page to not be promoted and have comments disabled.
  variable_set('node_options_page', array('status'));
  variable_set('comment_page', COMMENT_NODE_DISABLED);

  // Don't display date and author information for page nodes by default.
  $theme_settings = variable_get('theme_settings', array());
  $theme_settings['toggle_node_info_page'] = FALSE;
  variable_set('theme_settings', $theme_settings);

  // Update the menu router information.
  menu_rebuild();



}

/**
 * Implementation of hook_form_alter().
 *
 * Allows the profile to alter the site-configuration form. This is
 * called through custom invocation, so $form_state is not populated.
 */
function appcms_form_alter(&$form, $form_state, $form_id) {
  if ($form_id == 'install_configure') {
    // Set default for site name field.
    $form['site_information']['site_name']['#default_value'] = 'AppCMS';
  }
}

 /**
 * Add a block entry, or update if exists
 * This is a patch for the Install Profile API module
 */

function install_create_block($block) {
  if (is_array($block)) {
    $block = (object) $block;
  }
  $exists = db_result(db_query("SELECT bid FROM {blocks} WHERE module = '%s' AND delta = '%s' AND theme = '%s'", $block->module, $block->delta, $block->theme));
  if ($exists) {
    install_set_block($block->module, $block->delta, $block->theme, $block->region, $block->weight, $block->visibility, $block->pages, $block->custom, $block->throttle, $block->title);
  } else {
    install_add_block($block->module, $block->delta, $block->theme, TRUE, $block->weight, $block->region, $block->visibility, $block->pages, $block->custom, $block->throttle, $block->title);
    if (!$block->status) {
      install_add_block($block->module, $block->delta, $block->theme, FALSE);
    }
    if ($block->box) {
      install_create_custom_block($block->box->body, $block->box->info, $block->box->format);
    }
    if (is_array($block->roles)) {
      foreach ($block->roles as $rid) {
        install_add_block_role($block->module, $block->delta, $rid);
      }
    }
  }
  return db_result(db_query("SELECT bid FROM {blocks} WHERE module = '%s' AND delta = '%s' AND theme = '%s'", $block->module, $block->delta, $block->theme));
}