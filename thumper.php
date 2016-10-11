#!/usr/bin/php
<?php
require_once('path.inc');
require_once('get_host_info.inc');
require_once('rabbitMQLib.inc');

$db = new mysqli("10.200.44.219","server","letMe1n","user_info");

function register($user, $pass, $db)
{

    if ($db->connect_errno > 0 )
    {
        echo __FILE__.__LINE__." ERROR: ".$db->connect_error.PHP_EOL;
        return $db->connect_error;
        exit(-1);
    }
    $pass = hash('sha256', $pass);
    $user = hash('sha256', $user);
    $q = "insert into users (password, username) values ('$pass', '$user')";
    if($db->query($q) == TRUE)
    {
        print "succesfully registered";
        return "SUCC";
    }
    else
    {
        print $db->error;
        return "FAIL";
    }
    
}

function login($user, $pass, $db)
{

    if ($db->connect_error > 0 )
    {
        echo __FILE__.__LINE__." ERROR: ".$db->connect_error.PHP_EOL;
        return $db->connect_error;
        exit(-1);
    }

    $pass = hash('sha256', $pass);
    $user = hash('sha256', $user);
    
    $q = "select * from users where username='$user' and password='$pass'";
    if($db->query($q) == TRUE)
    {
        if(mysqli_num_rows($db->query($q)) == 1 )
        {
            //print mysqli_num_rows($db->query($q));
            return "SUCC";
        }
        else
        {
            return "FAIL";
        }
            
    }
    else
    {
        print $db->error;
        return "FAIL";
    }
    
}

function requestProcessor($request)
{
  global $db;
  
  echo "received request".PHP_EOL;
  //var_dump($request);
  if(!isset($request['type']))
  {
    return "ERROR: unsupported message type";
  }
  switch ($request['type'])
  {
    case "login":
        return login($request['username'],$request['password'], $db);
    case "register":
        return register($request['username'],$request['password'], $db);
    case "validate_session":
      return doValidate($request['sessionId']);
  }
  //return array("returnCode" => '0', 'message'=>"Server received request and processed");
}

$server = new rabbitMQServer("testRabbitMQ.ini","testServer");

$server->process_requests('requestProcessor');
$db->close();
exit();
?>

