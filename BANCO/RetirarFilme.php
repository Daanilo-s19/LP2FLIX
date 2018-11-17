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
        
        $titulo = $_GET["titulo"];
       
         $db = new DBController();
        
        $query = "DELETE FROM midia WHERE titulo = '$titulo' ";
	if ($db->deleteDB($query)== true){
            //setcookie("login", $login);
            header("Location:../RetirarMidia.php?sucesso=1");
        }
        else{
            header("Location:../RetirarMidia.php?sucesso=0");
            
        }
	
        ?>
    </body>
</html>
