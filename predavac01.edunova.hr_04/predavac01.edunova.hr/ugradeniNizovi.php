<?php
// Zapamtiti nazive ovih nizova
echo '$_GET';
echo '<pre>';
print_r($_GET);
echo '</pre>';

echo '$_POST';
echo '<pre>';
print_r($_POST);
echo '</pre>';

echo '$_REQUEST';
echo '<pre>';
print_r($_REQUEST);
echo '</pre>';

session_start();
echo '$_SESSION'; //poruka Notice:  Undefined variable: _SESSION in D:\pp21\predavac01.edunova.hr\ugradeniNizovi.php sve dok se prije korištenja SESSION niza ne pozove funkcija session_start();
echo '<pre>';
print_r($_SESSION);
echo '</pre>';

echo '$_FILES';
echo '<pre>';
print_r($_FILES);
echo '</pre>';

echo '$_COOKIE';
echo '<pre>';
print_r($_COOKIE);
echo '</pre>';



echo '$_SERVER';
echo '<pre>';
print_r($_SERVER);
echo '</pre>';


$t=1;
echo '$GLOBALS';
echo '<pre>';
print_r($GLOBALS);
echo '</pre>';  