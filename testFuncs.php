#!/usr/bin/php
<?php

$db = new mysqli("localhost","server","letMe1n","user_info");

function getExFor($base)
{
    global $db;
    $rates = array();

    $q = "select * from exchange where currency_1='" . $base ."' or currency_2='" . $base ."';";
    if($db->query($q) == TRUE)
    {
        $res = $db->query($q);
	while($r = $res->fetch_array(MYSQLI_ASSOC))
	{
		if($r['currency_1'] == $base)
		{
			$rates[$r['currency_2']] = $r['rate'];
		}
		else
		{
			$rate = $r['rate'];
			$rate = int($rate);
			$rate = (1/$rate);
			
			$rates[$r['currency_1']] = string($rate);
		}
	}

	return $rates;
        
    }
    
}

print_r(getExFor('EUR'));

?>
