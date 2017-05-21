<?php
include('../includes/dbconfig.php');

$query="select * from userlist";
$result = mysql_query($query) or die('Could not connect: ' . mysql_error());
$data = array();
if($result > 0) {
	while($row = mysql_fetch_array($result)) {
		$data[] = $row;	
	}
}
# JSON-encode the response
$json_response = json_encode($data);

// # Return the response
echo $json_response;
?>