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
        require_once("dbcontroller.php");
        
         $db = new DBController();
        
        $login = $_POST["login"];
        $senha = md5($_POST["senha"]); // HASHING VAGABUNDO
        $email = $_POST["email"];
        $datanasc = $_POST["datanasc"];
        
        $query = "INSERT INTO usuarios (login, senha, email,datanasc) VALUES ('$login', '$senha', '$email','$datanasc')";
	if ($db->insertDB($query)== true){
            setcookie("login", $login);
            header("Location:../Cadastro.php?sucesso=1");
        }
        else{
            header("Location:../Cadastro.php?sucesso=0");
            
        }
	
        ?>
    </body>
</html>
