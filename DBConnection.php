<?php

    $connect = mysqli_connect('localhost', 'root', 'root', 'chat_ajax');

    if (!$connect) {
        die('Error connect to DataBase');
    }