<?php
// $Id: custom_formatters_export.tpl.php,v 1.1.2.2 2010/02/04 09:33:51 deciphered Exp $
/**
 * @file
 * Theme for Custom Formatters Export.
 *
 * Available variables:
 * - $name: A string containing the exported module name.
 * - $formatters: An array of formatters to export.
 *
 * Each $formatter in $formatters contains:
 * - $formatter->cfid: The numberic id of the formatter.
 * - $formatter->name: The alphanumeric id of the formatter.
 * - $formatter->label: The human-readable title of the formatter.
 * - $formatter->field_types: A serialized array of supported field types.
 * - $formatter->multiple: A boolean value determining whether the formatter
 *   supports multiple values.
 * - $formatter->description: The description of the formatter.
 * - $formatter->mode: The mode of the formatter (basic/advanced).
 * - $formatter->code: The formatter data.
 */
?>
/**
 * Implements hook_theme().
 */
function <?php print $name ?>_theme() {
  return array(
<?php foreach ($formatters as $formatter) : ?>
    '<?php print $name ?>_formatter_<?php print $formatter->name ?>' => array(
      'arguments' => array('element' => NULL),
    ),
<?php endforeach; ?>
  );
}

/**
 * Implements hook_field_formatter_info().
 */
function <?php print $name ?>_field_formatter_info() {
  return array(
<?php foreach ($formatters as $formatter) : ?>
    '<?php print $formatter->name ?>' => array(
      'label' => '<?php print addslashes($formatter->label) ?>',
      'description' => t('<?php print addslashes($formatter->description) ?>'),
      'field types' => array('<?php print implode("', '", unserialize($formatter->field_types)) ?>'),
      'multiple values' => <?php print $formatter->multiple ? 'CONTENT_HANDLE_MODULE' : 'CONTENT_HANDLE_CORE' ?>,
    ),
<?php endforeach; ?>
  );
}
<?php foreach ($formatters as $formatter) : ?>

function theme_<?php print $name ?>_formatter_<?php print $formatter->name ?>($element) {
<?php foreach (split("\n", $formatter->code) as $line) { ?>
  <?php print $line . "\n" ?><?php } ?>
}
<?php endforeach;
