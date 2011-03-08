This is a collection of modules, settings and a custom theme that allows Drupal 6 to be used as a CMS for a mobile app. It can also be used to create a very mobile-friendly site but it's best when the flattened site is put inside the www folder of a PhoneGap project.

This might end up in an installation profile at some point.


Installation Procedure
======================

First, install Drupal 6

Install these standard modules
------------------------------
 * admin_theme
 * cck
 * custom_formatters
 * menu_block
 * token
 * toolbar
 * mobile_tools
 * filefield

Install this standard theme
---------------------------
 * Seven

Install these customised modules
--------------------------
 * html_export
   * More thorough about changing src & href values
 * jquery_update
   * Uses standard jQuery for Admin area, includes jQuery from theme if it exists

Install this custom theme
-------------------------
 * appcms

Use admin_theme to enable appcms as the default theme and Seven as the admin theme



Custom Formatters
=================

Audio
-----
    <div class="html5-audio-player">
     <audio controls preload="auto" autobuffer> 
      <source src="[site-url]/[filefield-filepath]" />
     </audio>
    </div>

Video
-----
    <div class="html5-video-player">
     <video controls preload="auto" autobuffer> 
      <source src="[site-url]/[filefield-filepath]" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2";'>
     </video>
    </div>

Image Gallery
-------------
    if(count($element['#node']->field_images)) {
    $output = '<script type="text/javascript">'."\n";
    $output .= 'jQT.generateGallery("gallery' . $element['#node']->nid . '", ['."\n";
    foreach ($element['#node']->field_images as $image) {
       $output .='{src:"' . $image['filepath'] . '", width:100, height:100},'."\n";
    }
    $output .= '],{defaultIndex:1});';
    $output .= '</script>'."\n";
    $output .= '<ul class="edgetoedge"><li><a href="#gallery' . $element['#node']->nid . '">Launch gallery</a></li></ul>'."\n";
    $output .= '</script>'."\n";
    return $output;
    }

Content
=============
Add these fields to Page type
----------------
 * Audio (field_audio)
   * Upload audio to embed it in this page
   * mp3, ogg, wav, m4a permitted
   * Not required
   * Maximum of 1
 * Video (field_video)
   * Upload video to embed it in this page
   * mp4, m4v, ogv, webm, mov permitted
   * Not required
   * Maximum of 1
 * Images (field_images)
   * Upload images you would like to appear in your gallery
   * jpg, png, gif, jpeg permitted
   * Not required
   * Unlimited
 * Icon (field_icon)
   * Upload an icon to use in the Tab Bar. This is only required for the main sections.
   * png permitted
   * Not required
   * Maximum of 1

Navigation
----------
 * Change name of 'Primary Links' to 'Tab Bar'
 * Add the 'Tab Bar' block created by menu_block to the 'block' region
   * Menu: Tab Bar
   * Item: <root of Tab Bar>
	 * Starting level: 2nd level (secondary)
	 * √ Make the starting level follow the active menu item
	 * Starting level will be: Children of active menu item
	 * Maximum depth: 1

Content Types
-------------
 * Event
   * Standard content with a title & a date field called field_date

The most recent code for the plugin behind the events calendar (available at /calendar) is available at:
https://github.com/thingsinjars/jQTouch-Calendar

View
----
Set up a custom View of Calendar
(import events_list.view)

HTML Export
===========
After export, change links in index.html from href="node/x" to href="pagex.html"
This bit still should be handled by html_export but double-check.

 * RegEx
	 * href="node/([0-9])*"
	 * to
	 * href="page$1.html"
 * Change all absolute references to relative
   * src="/ to src="
   * href="/ to href="