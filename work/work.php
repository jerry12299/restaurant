<?php require('db.php'); ?>


<?php


$answer = file_get_contents('php://input');
$menu = explode(',',$answer);
$sum = 0;
$sql="SELECT pname,price FROM `menu`";
$result = $mysqli->query($sql);
$i=0;

while($row = $result->fetch_assoc()) {



if($menu[$i]>0){
    echo "{$row['pname']} : ".$menu[$i] . "<br>";
    $sum += $row['price'] * $menu[$i];

}
$i ++;

}
if ($sum>0){
    echo "總共 ".$sum." 元";

}
?>