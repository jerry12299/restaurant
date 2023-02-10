  <?php require('db.php');?>
  <?php 
  
  $sql = "select tablenum, pname,num FROM addorder,menu WHERE addorder.mid = menu.mid and tablenum = '1'";
  $result = $mysqli->query($sql);
  while($row = $result->fetch_assoc()) {
    echo "{$row['pname']}: {$row['num']}<br>";
    }
    echo "<hr>";
 $sql = "SELECT tablenum, sum(amount) as total FROM
 (
 SELECT tablenum, pname,num,price,num*price as amount FROM addorder,menu WHERE addorder.mid = menu.mid AND tablenum = '1'
 )as a;";
 $result = $mysqli->query($sql);
 while($row = $result->fetch_assoc()) {
    echo "總共: {$row['total']}<br>";
    }

    ?>