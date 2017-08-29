<?php
$servername = "localhost";
$username = "root";
$password="";
$dbName = "highscore";
$jsonArray = array();
$conn = new mysqli($servername,$username,$password,$dbName);
if(!$conn)
{
    die("Connection failed. ".mysqli_connect_error());
}
$sql = "SELECT id,name,highscore,timeplayed FROM highscoredata;";
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        array_push($jsonArray,array($row['id'],$row['name'], $row['highscore'], $row['timeplayed']));
    }
    echo json_encode($jsonArray);
}
?>