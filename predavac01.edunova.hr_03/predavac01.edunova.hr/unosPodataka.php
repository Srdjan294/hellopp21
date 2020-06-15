<?php
// ugrađenih nizova https://www.php.net/manual/en/reserved.variables.php

// echo $_GET;
//ako želimo znati sadržaj varijable
print_r($_GET); // $_GET sadrži parametre definirane pute HTTP GET metode. Čitati: https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods

echo '<hr />';

echo '<pre>';
var_dump($_GET);
echo '</pre>';

// kako ispisati vrijednost pod danim ključem (?ime=Tomislav)
// ime: ključ, Tomislav: vrijednost
//echo $_GET['ključ'];

echo $_GET['ime'];
