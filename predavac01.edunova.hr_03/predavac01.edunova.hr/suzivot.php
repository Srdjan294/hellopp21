<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="<?php 
    //dobar primjer korištenja PHP-a unutar HTML
    echo 'UTF-8';





    ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title<?php 
    //loš primjer korištenja PHP-a unutar HTML
    echo '>' , "\n"; // "\n" je novi red u HTML source
    ?>
</head>
<body>
    <?php 
    //dobar primjer korištenja PHP-a unutar HTML
    echo 'Dobar dan';
    ?>


<?php 
    //loš primjer korištenja PHP-a unutar HTML
    echo '</body>' . PHP_EOL; //best practice
    ?>
</html>