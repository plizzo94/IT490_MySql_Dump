#!/usr/bin/php

<?php

$log = fopen("/var/log/thump.log", 'a');
print_r($log);
fwrite($log, 'sdfjndjn');
fclose($log);

?>