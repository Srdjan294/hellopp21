<?php
require_once 'konfiguracija.php';

if(!isset($_POST['email']) || !isset($_POST['password'])){
    header('location: index.php?p=1');
    exit;
}

// ovdje neće doći ukoliko ključevi email i lozinka nisu postavljeni

if(trim($_POST['email'])==='' || trim($_POST['password'])===''){
    header('location: index.php?p=2');
    exit;
}

// sada sam siguran kako su ključevi postavljeni i kako postoje vrijednosti

//loše dummy rješenje
if($_POST['email']!=='edunova@edunova.hr' && $_POST['lozinka']!=='e'){ 
    // korisničko ime i lozinka ne odgovaraju
    header('location: index.php?p=3');
    exit;
}


// tu sam siguran da se korisnik uspješno autorizirao i radim što treba
$_SESSION['autoriziran']=$_POST['email'];
header('location: privatno.php');



