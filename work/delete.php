
<?php require('db.php');?>
<?php
 $tnum = $_POST["tid"];

//  $aidarr = [];
//  $i=0;
//  $a=0;
//  $cknum = $_POST["cknum"];
//  $cknum2 = $_POST["cknum2"];
//  $cknum3 = $_POST["cknum3"];
//  $number = 0;
//  $max = 0;


$sql = "select tablenum, pname,num FROM addorder,menu WHERE addorder.mid = menu.mid and tablenum = $tnum";
$result = $mysqli->query($sql);
while($row = $result->fetch_assoc()) {
  echo "{$row['pname']}: {$row['num']}<br>";
  }
  $sql = "SELECT tablenum, sum(amount) as total FROM
  (
  SELECT tablenum, pname,num,price,num*price as amount FROM addorder,menu WHERE addorder.mid = menu.mid AND tablenum = $tnum
  )as a;";
  $result = $mysqli->query($sql);
  $row = $result->fetch_assoc();
  $money = $row["total"];  

//   echo $money;
if($money>0){
$stmt = $mysqli->prepare("INSERT INTO `tablenum` (`tid`, `tablenum`, `money`) VALUES (NULL, ?, ?) ;");
$stmt->bind_param("ss", $tnum,$money);
$stmt->execute();
}

$sql = "select * FROM tablenum WHERE tablenum = $tnum";
$result = $mysqli->query($sql);
$moneyarr=[];
$tidarr=[];
$i=0;
 while($row = $result->fetch_assoc()) {

    $tidarr[$i]=$row['tid'];
    $moneyarr[$i]=$row['money'];

    $i ++;

 } 
 //反向排序，新的資料在前
 $newtidarr = array_reverse($tidarr);
 $newmoneyarr= array_reverse($moneyarr);
echo "<br>";
echo "結帳號碼:".$newtidarr[0]  ."<br>金額: ".$newmoneyarr[0]." 元<br>";

//刪除舊資料
$stmt = $mysqli->prepare("DELETE FROM addorder WHERE tablenum = ? ;");
$stmt->bind_param("s", $tnum);
$stmt->execute();


?>