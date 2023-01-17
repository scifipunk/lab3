<?php
session_start();
include "DBConnection.php";
include "links.php";

if(isset($_POST["chatName"]))
{
    $chatName = $_POST["chatName"];
    $sql = "INSERT INTO chatrooms (Chat) VALUES('$chatName')";
    if($connect->query($sql))
        header('Location: index.php');
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
                <h4>Add new chat</h4>
            </div>
            <div class="modal-body">
                <form action="addChat.php" method="POST">
                    <p>Enter chat name</p>
                    <input type="text" name="chatName" id="chatName" class="form-control" autocomplete="off" />
                    <br>
                    <input type="submit" name="submit"  class="btn btn-primary" style="float:right;" value="OK"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>