This is a collection of modules, settings and a custom theme that allows Drupal 6 to be used as a CMS for a mobile app. It can also be used to create a very mobile-friendly site but it's best when the flattened site is put inside the www folder of a PhoneGap project.

Note: At the moment, this throws the occasional error during install. This apparently has no effect on whether something has worked or not.

Installation Procedure
======================

 * Download Drupal 6
 * Unzip onto your server
 * Upload /profiles/appcms
 * Run the Drupal installer, choosing AppCMS as the Installation Profile

Structure
=========

Home Page
---------
  * An introduction page will be created automatically
    * This can be edited at /node/1/edit
  * The 'Default front page' will be set to this static page
	  * Visit /admin/settings/site-information to change it


Navigation
----------
The 'Primary links' menu has been renamed 'Tab bar'. Nodes added as children of the tab bar will appear along the bottom of the screen. Four or five is a good number but any number can be handled. 

Pages within the main sections will not be added to the tab bar but will be listed within those sections.

Content
=======

The 'Page' type now has extra fields:

Audio
-----
  * Upload audio to embed it in this page
  * mp3, ogg, wav, m4a permitted
  * Not required
  * Maximum of one per page

Video
-----
  * Upload video to embed it in this page
  * mp4, m4v, ogv, webm, mov permitted
  * Not required
  * Maximum of one per page

Images
------
  * Upload images you would like to appear in a gallery
  * jpg, png, gif, jpeg permitted
  * Not required
  * Any number per page

Icon
----
  * Upload an icon to use in the tab bar. This is only required for the main sections.
  * There are sample icons in the /profiles/appcms/themes/appcms/images directory
  * png permitted
  * Not required
  * Maximum of one per page

Custom Formatters
-----------------
Custom display types have been added for the audio, video and image gallery presentation

Content Types
-------------
An 'Event' type has been added. This has a title and a date field. Any events created (/node/add/event) will appear in the Calendar.

View
----
A calendar has been created and made available at /calendar. This will display an iCal-like calendar which includes any 'events' content. It has been added to the menu but can be removed if not needed (/admin/build/menu-customize/primary-links).

The most recent code for the plugin behind the events calendar is available at:
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