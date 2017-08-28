<?php
$servername = "localhost";
$username = "root";
$password="";
$dbName = "highscore";

$name = $_POST["namePost"];
$highscore = $_POST["highscorePost"];


$conn = new mysqli($servername,$username,$password,$dbName);
if(!$conn)
{
    die("Connection failed. ".mysqli_connect_error());
}
$sql = "INSERT INTO highscoredata(name, highscore) VALUES ('".$name."','".$highscore."');";
$result = mysqli_query($conn,$sql);

?>