<?php 

  include("db.php");
  include("auth.php");

  $id           = $_POST['id'];
  $deduction    = $_POST['deduction'];
  $overtime     = $_POST['overtime'];
  $bonus        = $_POST['bonus'];
  $salary1      = $_POST['salaray'];

  $sql = mysqli_query($connection,"UPDATE employee SET deduction='$deduction', overtime='$overtime', bonus='$bonus', salaray='$salary1' WHERE emp_id='$id'");

  if ($sql)
  {
    ?>
    <script>
      alert('Account successfully updated.');
      window.location.href='home_employee.php';
    </script>
    <?php 
  }
  else
  {
    echo "Invalid";
  }
?>