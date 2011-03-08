Install
=======

Drupal 6
--------

Install these standard modules
------------------------------
 * admin_theme
 * cck
 * custom_formatters
 * menu_block
 * token
 * toolbar

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
Add to Page type
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
 * Change Primary Links to Tab Bar

Content Types
-------------
Event - Title & Date
Calendar - Holds many events

View
----
Set up a custom View of Calendar
(see events_list.view)

HTML Export
===========
After export, change links in index.html from href="node/x" to href="pagex.html"
This bit still should be handled by html_export but double-check

 * RegEx
	 * href="node/([0-9])*"
	 * to
	 * href="page$1.html"
 * Change all absolute references to relative
   * src="/ to src="
   * href="/ to href="