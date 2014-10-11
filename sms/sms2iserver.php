<?php
$url = "http://182.92.195.0:8080/";
$url = $url . "authsms";
//echo $url . "<br />";

$srcid = "0";
// Set message here-------------------
$prefix = "[验证码Cert Code:]";
$sms = "134567";
$postfix = "[by:紫光软件]";
$phone = "18833500052";
// end of set message -----------------
$sender = "node002";
$netid = "SSID-C";
$progid = "auth_php";
//$optime = "2015-09-23T21:19:19";
$optime = date(DATE_W3C,time());

$payload = "{";
$payload = $payload  . "\"id\":0,";
$payload = $payload  . "\"srcid\":\"" . $srcid . "\",";
$payload = $payload  . "\"prefix\":\"" . $prefix . "\",";
$payload = $payload  . "\"sms\":\"" . $sms . "\",";
$payload = $payload  . "\"postfix\":\"" . $postfix . "\",";
$payload = $payload  . "\"mac\":null,\"ip\":null,";
$payload = $payload  . "\"phone\":\"" . $phone . "\",";
$payload = $payload  . "\"stat\":0,\"optflag\":0,\"token\":null,";
$payload = $payload  . "\"rectime\":null,";
$payload = $payload  . "\"sender\":\"" .$sender . "\",";
$payload = $payload  . "\"netid\":\"" . $netid . "\",";
$payload = $payload  . "\"progid\":\"" . $progid . "\",";
$payload = $payload  . "\"optime\":\"" . $optime . "\",";
$payload = $payload  . "\"sendtime\":null";
$payload = $payload  . "}";

echo $payload . "<br />";

// Initialize the cURL session with the request URL
$session = curl_init($url); 
//echo $session . "<br />";

// method POST
curl_setopt($session, CURLOPT_CUSTOMREQUEST, "POST");  

// Tell cURL to return the request data
curl_setopt($session, CURLOPT_RETURNTRANSFER, true); 

// Set the HTTP request authentication headers
$headers = array(
    'Connection: Keep-Alive',
    'Content-Type: ' . 'application/json;charset=UTF-8'
);
//echo $headers . "<br />";
curl_setopt($session, CURLOPT_HTTPHEADER, $headers);

// Set payload
curl_setopt($session, CURLOPT_POSTFIELDS, $payload); 

// Execute cURL on the session handle
$response = curl_exec($session);
//echo $response . "<br />";

$httpcode = curl_getinfo($session,CURLINFO_HTTP_CODE); 
// httpcode: 201 - sucuess  500 - server error  0 - no response
echo $httpcode . "<br />";

// Close the cURL session
curl_close($session);


?>
