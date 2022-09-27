<?php

$connection = mysqli_connect('localhost', 'root', '', 'baza');

if($connection === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$date =  $_POST['date'];
$howManyPersons = $_POST['howManyPersons'];
$phoneNumber =  $_POST['phoneNumber'];

$sql = "INSERT INTO rezerwacje(data_rez, liczba_osob, telefon) VALUES ('$date', '$howManyPersons', '$phoneNumber')";
if (mysqli_query($connection, $sql)) {
    echo "Dodano do bazy danych";
    header("refresh:3; url=restauracja.html");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}

mysqli_close($connection);
?>