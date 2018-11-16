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
        require_once("PHP/dbcontroller.php");

        $login = $_POST['login'];
        $senha = md5($_POST['senha']); /*md5 transforma a string em um hash de 32 caractere */        
        $db = new DBController();

        $query = "SELECT  * FROM usuarios";
        $results = $db->selectDB($query);

        $flag = false;
        foreach ($results as $usuario) {
            if ($login == $usuario["login"] && $senha == $usuario["senha"]) {
                setcookie("login", $login);
                header("Location:entretenimento/SiteIndex.php");
                $flag = true;               
            }
        }
        if(!$flag)
            header("Location:index.php?err=true");
        
        ?>
    </body>
</html>
