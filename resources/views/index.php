<?php
$servername = "tisnanews.com:2083";
$database = "u2743770_chatbot";
$username = "u2743770";
$password = "Husnamaret2008!@#";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
mysqli_close($conn);
?>