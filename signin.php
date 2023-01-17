<?php
session_start();
include "DBConnection.php";
include "links.php";

if(isset($_POST["uName"]))
{
    $uName = $_POST["uName"];
    $sql = "INSERT INTO users (User) VALUES('$uName')";
    
    if($connect->query($sql)){
        $data = mysqli_fetch_assoc(mysqli_query($connect, "SELECT * FROM `users` ORDER BY `Id` DESC LIMIT 1"));
        

        $_SESSION['userName'] = $data['Id'];
        


        header('Location: index.php');

    }
        
    else
        echo "Error. Try again!";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Register your chat name</h4>
            </div>
            <div class="modal-body">
                <form action="signin.php" method="POST">
                    <p>Name</p>
                    <input type="text" name="uName" id="uName" class="form-control" autocomplete="off" />
                    <br>
                    <input type="submit" name="submit"  class="btn btn-primary" style="float:right;" value="OK"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>