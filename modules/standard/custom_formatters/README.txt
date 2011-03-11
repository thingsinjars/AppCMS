// $Id: README.txt,v 1.2.2.6 2010/03/02 06:34:31 deciphered Exp $

The Custom Formatters module allows users to easily create custom CCK Formatters
without the need to write a custom module.

Custom Formatters was written and is maintained by Stuart Clark (deciphered).
- http://stuar.tc/lark


Features
-------------------

* Two different editor modes:
  * Basic: A HTML based editor with Token support.
  * Advanced: A PHP based editor with support for multiple fields and multiple
    values.
* Support for:
  * Content Construction Kit (CCK)
  * Views
  * Display
* Preview custom formatters during creation (requires Devel generate module).
* Clone an existing custom formatter.
* Export custom formatters (advanced formatters only).
* Support for the Insert module.


Required Modules
-------------------

* Content Construction Kit (CCK)  - http://drupal.org/project/cck
* Token                           - http://drupal.org/project/token


Recommended Modules
-------------------

* Devel (includes Devel generate) - http://drupal.org/project/devel


Usage
-------------------

Custom Formatters can be managed on the 'Custom Formatters'
overview page: 'Administer > Site configuration > Custom Formatters'.
http://[www.yoursite.com/path/to/drupal]/admin/settings/formatters

More information on usage, including tips & tricks, can be found in help:
http://[www.yoursite.com/path/to/drupal]/admin/help/custom_formatters


Upgrading
-------------------

Custom Formatters 1.2 adds the requirement of the Token module, you MUST install
and enable the module if you have not already done so or you will run into
issues.

And as always, be sure to run update.php after updating Custom Formatters.
http://[www.yoursite.com/path/to/drupal]/update.php


Developers
-------------------

Please refer to DEVELOPERS.txt for information on provided improved support for
your modules defined CCK fields with the Custom Formatters module.
