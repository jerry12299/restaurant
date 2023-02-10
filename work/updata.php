<?php require('db.php');?>
<?php
 $tid = $_POST["tid"];
 $aidarr = [];
 $i=0;
 $a=0;
 $cknum = $_POST["cknum"];
 $cknum2 = $_POST["cknum2"];
 $cknum3 = $_POST["cknum3"];
 $cknum4 = $_POST["cknum4"];
 $cknum5 = $_POST["cknum5"];
 $number = 0;



$sql ="SELECT aid FROM addorder WHERE tablenum = $tid;";
$result = $mysqli->query($sql);
while($row = $result->fetch_assoc()) {
    // echo $row["aid"]."<br>";
    $aidarr[$i]=$row["aid"];
    $i += 1;
}

switch($tid){
    case 1:
    $number = $cknum;
    break;
    case 2:
    $number = $cknum2;
    break;
    case 3:
    $number = $cknum3;
    break;
    case 4:
    $number = $cknum4;
    break;
    case 5:
    $number = $cknum5;
    break;

}



// if ($tid==1){
// $number = $cknum;
// }elseif($tid==2){
//     $number = $cknum2;
// }else{
//     $number = $cknum3;

// }
        

// $stmt = $mysqli->prepare("DELETE FROM addorder WHERE aid = $aid ;");
// // $stmt->bind_param("s",  );
// $stmt->execute();


        $sql = "select aid,tablenum, pname,num FROM addorder,menu WHERE addorder.mid = menu.mid and tablenum = $tid";
        $result = $mysqli->query($sql);
         
         while($row = $result->fetch_assoc()) {
            if($aidarr[$a]==$row["aid"]&&$a<$number){
            echo "<s>{$row['pname']}: {$row['num']}</s><br>";
            $a +=1;
            }
           else{
            echo "{$row['pname']}: {$row['num']}<br>";
            
           }
               
        }
       
    
?>