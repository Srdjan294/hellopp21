<?php

// primljeni parametar dodjelim varijabli

$i=$_GET['broj'];
$j=$_GET['drugibroj'];


// , razdvaja parametre funkcije
echo $i, $j;
echo '<hr />';

// = operator dodjele vrijednosti: prvo se računa desna strana pa se dodjeli ljevoj


// . operator ljepljenja (concatination)
echo $i . $j;
echo '<hr />';

// + operator zbrajanja
echo $i + $j;
echo '<hr />';

// - operator oduzimanja
echo $i - $j;
echo '<hr />';

// * operator množenja
echo $i * $j;
echo '<hr />';

// * operator djeljenja
echo $i / $j;
echo '<hr />';

// == ili === operator jednakosti
echo $i == $j;
echo '<hr />';

// razlika između == i ===
// == provjerava po vrijednosti
// === provjerava po vrijednosti i tipu podatka

$t=1; $k='1';
echo '==', $t==$k;
echo '<hr />';

echo '===', $t===$k;
echo '<hr />';

// % operator modulo je ostatak nakon cjelobrojnog djeljenja
echo $i % $j, ': ', gettype( $i % $j);

