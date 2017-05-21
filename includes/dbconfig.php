<?php
error_reporting(0);
/*****************Localhost*********************/
$user_name = "root";
$password = "";
$database = "addressbook";
$server = "localhost";

/*****************Server connection*********************/
/*$server = "localhost";
$user_name = "piyalbxg_piyali";
$password = "piyali@123#";
$database = "piyalbxg_new";*/



$db_handle = mysql_connect($server, $user_name, $password);

$db_found = mysql_select_db($database, $db_handle);

if ($db_found) {

//print "Database Found ";

}
else {

print "Database NOT Found ";

}
?>