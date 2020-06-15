<?php

// definicija:Varijabla je prostor u memoriji u koji možemo
// pohraniti vrijednost

// PHP je interpreter
//na prvu se ne zna koji je tip jer piše $v
//tip podatka određuje desna strana
$v=7; //int

// https://www.php.net/manual/en/function.gettype.php

echo $v . ': ' . gettype($v);

echo '<hr />';
// varijabla se može redeklarirati u drugom tipu podatka
$v=2.3;
echo $v . ': ' . gettype($v);
echo '<hr />';

$v='Osijek';
echo $v . ': ' . gettype($v);
echo '<hr />';

$v=true; // echo boolean true: 1, false: [prazno]
echo $v . ': ' . gettype($v);
echo '<hr />';

$v=[];
echo '[]: ' . gettype($v);
echo '<hr />';

$v=new stdClass();
echo 'new stdClass: ' . gettype($v);
echo '<hr />';

$ime='Tomislav';

echo $ime;
