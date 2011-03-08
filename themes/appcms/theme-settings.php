<?php
// 

/**
* Implementation of THEMEHOOK_settings() function.
*
* @param $saved_settings
*   array An array of saved settings for this theme.
* @return
*   array A form array.
*/
function appcms_settings($saved_settings) {
	//Need to add icons here possibly
  // Set the default values for the theme variables
  $defaults = array(
    'appcms_theme' => 'default',
  );
  
  // Merge the variables and their default values
  $settings = array_merge($defaults, $saved_settings);
  
  // Layout Type
  $form['appcms_theme'] = array(
    '#type' => 'select',
    '#title' => t('Theme Type'),
    '#default_value' => $settings['appcms_theme'],
    '#options' => array(
	    'default' => t('Default'),
      'jqt' => t('jQTouch'),
      'apple' => t('Apple'),
      'artspot' => t('Artspot'),
    ),
    '#description' => t('This will determine the colour and appearance of your app.'),
  );

  return $form;
}
