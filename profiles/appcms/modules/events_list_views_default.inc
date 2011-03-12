<?php
// $Id: 

/*
*  This file is used to tell the views module about the new node_example table.
*
* Database definition:
* @code
*   CREATE TABLE node_example (
*     vid int(10) unsigned NOT NULL default '0',
*     nid int(10) unsigned NOT NULL default '0',
*     color varchar(255) NOT NULL default '',
*     quantity int(10) unsigned NOT NULL default '0',
*     PRIMARY KEY (vid, nid),
*     KEY <code>node_example_nid</code> (nid)
*   )
* @endcode
*/

function node_example_views_data()  {
  // Basic table information.

  // ----------------------------------------------------------------
  // node_example table
  //  New group within Views called 'Example'

  $data = array();
  $data['node_example']['table']['group']  = t('Example');

  //  New base table called 'Example Node'
  //  This allows it to be selected as the 'view type'
  //          when you initially add a new view. 
  $data['node_example']['table']['base'] = array(
    'field' => 'vid',
    'title' => t('Example Node'),
    'help' => t("Example Node type with color and quantity information."),
    'weight' => -9,
  );

  $data['node_example']['table']['join'] = array(
    'node_revisions' => array(
      'left_field' => 'vid',
      'field' => 'vid',
    ),
    'node' => array(
      'left_field' => 'nid',
      'field' => 'nid',
    ),
  );

  $data['node_example']['vid'] = array(
    'title' => t('Node revision'),
    'help' => t('The particular node revision the order color and quantity is attached to'),
    'relationship' => array(
      'label' => t('Node revision'),
      'base' => 'node_revisions',
      'base field' => 'vid',
      // This allows us to not show this relationship if the base is already
      // node_revisions so users won't create circular relationships.
      'skip base' => array('node', 'node_revisions'),
    ),
  );

  $data['node_example']['nid'] = array(
    'title' => t('Node'),
    'help' => t('The particular node the order color and quantity is attached to'),
    'relationship' => array(
      'label' => t('Node'),
      'base' => 'node',
      'base field' => 'nid',
      // This allows us to not show this relationship if the base is already
      // node so users won't create circular relationships.
      'skip base' => array('node', 'node_revisions'),
    ),
  );

  // quantity field
  $data['node_example']['quantity'] = array(
    'title' => t('Quantity'),
    'help' => t('Order Quantity.'),
    'field' => array(
      'handler' => 'views_handler_field_numeric',
      'click sortable' => TRUE,
     ),
    'filter' => array(
      'handler' => 'views_handler_filter_numeric',
    ),
    'sort' => array(
      'handler' => 'views_handler_sort',
    ),
  );

  // Color field    
  $data['node_example']['color'] = array(
    'title' => t('Color'),
    'help' => t('Color of item ordered.'),

    'field' => array(
      'handler' => 'views_handler_field',
      'click sortable' => TRUE,
     ),
     'filter' => array(
      'handler' => 'views_handler_filter_string',
     ),
     'argument' => array(
       'handler' => 'views_handler_argument_string',
     ),
     'sort' => array(
      'handler' => 'views_handler_sort',
     ),
  );

  return $data;
}
?>