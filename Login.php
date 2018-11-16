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
        $senha = md5($_POST['senha']);
        $db = new DBController();

        $query = "SELECT  * FROM usuarios";
        $results = $db->selectDB($query);

        $flag = 0;
        foreach ($results as $usuario) {
           
            if ($login == $usuario["login"] && $senha == $usuario["senha"]) {
                setcookie("login", $login);
                header("Location:entretenimento/SiteIndex.php");
                $flag = 1;               
            }
        }
        if(!$flag)
            header("Location:index.php?err=1");
        
        ?>
    </body>
</html>
