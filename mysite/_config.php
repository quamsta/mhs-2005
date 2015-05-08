<?php

global $project;
$project = 'mysite';

global $database;
$database = 'mhs-2005';

require_once 'conf/ConfigureFromEnv.php';

// Set the site locale
i18n::set_locale('en_US');

Calendar::add_extension('CalendarExtension');