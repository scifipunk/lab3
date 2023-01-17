<?php
session_start();
include "DBConnection.php";
include "links.php";


if (isset($_GET['userName'])){
   ;$curUser = $_GET['userName'];
}
else {
     $curUser = $_SESSION['userName'];
}



if(isset($_GET["curUser"]))
{
    $curUser = $_GET["curUser"];
    mysqli_query($connect, "DELETE FROM `users` WHERE `users`.`Id` = '$curUser'");
    session_unset();
    header("location: signin.php");
}


if(isset($_GET["chatId"]))
{
    $_SESSION["chatId"] = $_GET["chatId"];
    $_SESSION['curUser'] = $curUser;
    header("location: chat.php");
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
                <h4>Select your chatroom</h4>
            </div>
            <div class="modal-body">
            <ol>
            <?php
                $chats = mysqli_query($connect, "SELECT * FROM chatrooms")
                or die("Failed to query database".mysql_error());
                while($chat = mysqli_fetch_assoc($chats))
                {
                    echo '<li>
                        <a style="text-decoration: none" href="index.php?chatId='.$chat['Id'].'">'.$chat['Chat'].'</a>
                    </li>';

                }
            ?>
            </ol> 
            <a href="addChat.php" style="float:left; text-decoration: none"> Add new chat here.</a>
            <ol>
                
            <a href="index.php?curUser='<?= $curUser ?>'" style="float:right; text-decoration: none"> Change user here.</a>
            </ol>
            </div>
        </div>
    </div>

        

</body>
</html>