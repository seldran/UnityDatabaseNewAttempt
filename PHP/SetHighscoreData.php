<?php
$servername = "localhost";
$username = "root";
$password="";
$dbName = "highscore";

$name = $_POST["namePost"];
$highscore = $_POST["highscorePost"];
$timePlayed = $_POST["timePlayedPost"];


$conn = new mysqli($servername,$username,$password,$dbName);
if(!$conn)
{
    die("Connection failed. ".mysqli_connect_error());
}
$query = ("INSERT INTO highscoredata(name, highscore,timeplayed) VALUES(?,?,?)");
$stmt = mysqli_stmt_init($conn);
mysqli_stmt_prepare($stmt, $query);
mysqli_stmt_bind_param($stmt, 'sss',$name,$highscore,$timePlayed);
mysqli_stmt_execute($stmt);


?>