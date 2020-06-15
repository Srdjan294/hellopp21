<?php

// stranica prima dva parametra
// slika: URL
// naslov: String

//sztanica prikazuje sliku dok je naslov iznad slike.
// slika i naslov se nalaze u sredini stranice

//Primjer poziva
//zadatak3.php?slika=https://randomuser.me/api/portraits/women/7.jpg&naslov=Marija%20Marković

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div style="width: 100%; text-align: center;">
        <p><?php echo $_GET['naslov'] ?></p>
        <img src="<?php echo $_GET['slika'] ?>" alt="<?php echo $_GET['naslov'] ?>">
    </div>
</body>
</html>