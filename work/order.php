

<?php require('db.php');?>
<?php

$tnum = $_POST["tablenum"];
$pnumber = $_POST["arr"];
//
//

// $answer = file_get_contents('php://input');
$menu = explode(',',$pnumber);
$sum = 0;



for($i=0;$i<count($menu);$i++) {

if($menu[$i]>0){
// echo "$name[$i] : ".$menu[$i] . "<br>";

$mid = $i + 1;
//送到資料庫
$stmt = $mysqli->prepare("insert into addorder (aid, tablenum, mid, num) values (NULL, ?, ?, ?);");
$stmt->bind_param("sss",  $tnum, $mid ,$menu[$i]);
$stmt->execute();

}
// $sum += $comVal[$i] * $menu[$i];
}
$sql = "SELECT tablenum, sum(amount) as total FROM
(
SELECT tablenum, pname,num,price,num*price as amount FROM addorder,menu WHERE addorder.mid = menu.mid AND tablenum = $tnum
)as a;";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
$money = $row["total"];  
if($money>0){
  echo "已送出的訂單:<br>";
}

$sql = "select tablenum, pname,num FROM addorder,menu WHERE addorder.mid = menu.mid and tablenum = $tnum";
$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()) {
  echo "{$row['pname']}: {$row['num']}<br>";
  }
 
  
  // $stmt = $mysqli->prepare("INSERT INTO `tablenum` (`tid`, `tablenum`, `money`) VALUES (NULL, ?, ?)");
  // $stmt->bind_param("ss",  $tnum, $money);
  // $stmt->execute();

  
  if($money>0){
    echo "總共: ".$money." 元<br>";
  }
  
  // while($row = $result->fetch_assoc()) {
  //    echo "總共: {$row['total']} 元<br>";
  //    }
// echo "總共 ".$sum." 元";
?>