<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QR-Code Product <?= $row->barcode ?></title>
</head>

<body>
    <h3>QR-Code Product</h3>
    <img src="uploads/qr-code/item-<?= $row->barcode ?>.png" style="width: 250px"><br><br>
    <?= $row->barcode ?>
</body>

</html>