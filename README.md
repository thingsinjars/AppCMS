This is a collection of modules, settings and a custom theme that allows Drupal 6 to be used as a CMS for a mobile app. It can also be used to create a very mobile-friendly site but it's best when the flattened site is put inside the www folder of a PhoneGap project.

Note: Some of these steps could probably be included in the Installation Profile but I haven't figured out how to do that yet.
Note 2: At the moment, this throws the occasional error during install. This apparently has no effect on whether something has worked or not.

Installation Procedure
======================

 * Download Drupal 6
 * Unzip onto your server
 * Upload /profiles/AppCMS/appcms.profile
 * Upload the modules listed in modules/modules-README.txt This includes two customised modules:
   * html\_export - More thorough about changing src & href values
   * jquery\_update - Uses standard jQuery for Admin area, includes jQuery from theme if it exists
 * Run the Drupal installer, choosing AppCMS as the Installation Profile
   * Depending on server configuration, you may see an error about flexifield. This is due to an overlapping dependency. It will go away on the next screen



Install this standard theme
---------------------------
  * Seven (http://drupal.org/project/seven)

Install this custom theme
-------------------------
  * AppCMS

Use admin_theme to enable AppCMS as the default theme and Seven as the admin theme

Module settings
---------------
  * The jQuery Update module needs to be configured before use
    * Visit: /admin/settings/jquery\_update\_appcms
    * choose 'Minified' and save

Structure
=========

Home Page
---------
  * Create a new page (/node/add/page)
  * Enter holding text for your app's launch page
	* Visit: /admin/settings/site-information
    * set the 'Default front page' to the address of this page.


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


Section navigation
------------------
	* Nodes added as of the top-level Tab Bar items will not be added to the tab bar but will be listed within those sections.

Content
=======

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

Custom Formatters
-----------------
Install the custom formatters listed in custom_formatters/*.php

Content Types
-------------
 * Event
   * Standard content with a title & a date field called field_date

View
----
Set up the custom Calendar View by importing events_list.view

Events
------
  * Add a Tab Bar menu item (/admin/build/menu-customize/primary-links/add) pointing to the URL 'calendar' (created in Views)
  * This will display an iCal-like calendar which includes any 'events' content.
  * Add events (/node/add/event)

The most recent code for the plugin behind the events calendar (available at /calendar) is available at:
https://github.com/thingsinjars/jQTouch-Calendar

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