<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        require_once("../PHP/GM.php");
        
        $GM = new GM();
        $user = new Usuario($_POST["login"], md5($_POST["senha"]));
        $user->setEmail($_POST["email"]);
        $user->setNasc( $_POST["datanasc"]);
        $GM->InserirUser($user);
        ?>
    </body>
</html>
