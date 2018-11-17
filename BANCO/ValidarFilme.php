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
        
        $results = $db->selectDB("SELECT * FROM midia");
        $indice = 1;
         foreach ($results as $midia){
             if($indice <= $midia["indice"])
                 $indice++;
             
         }
         $indice++;
        
        $tipo = $_POST["tipo"];
        $genero = $_POST["genero"];
        $titulo = $_POST["titulo"];
        $diretor = $_POST["diretor"];
        $elenco = $_POST["elenco"];
        $imagem = $_POST["imagem"];
        $sinopse = $_POST["sinopse"];
        $ano = $_POST["ano"];
        $avaliacao = $_POST["avaliacao"];
        $duracao = $_POST["duracao"];
        $classificacao = $_POST["classificacao"];
        $temporada = $_POST["temporada"];
        $bilheteria = $_POST["bilheteria"];
        
       
         
        

        $query = "INSERT INTO midia (indice, tipo, genero, titulo, diretor, elenco, imagem, sinopse, ano, avaliacao, duracao, classificacao, temporada, bilheteria) VALUES ('$indice', '$tipo', '$genero','$titulo',' $diretor','$elenco','$imagem','$sinopse','$ano','$avaliacao','$duracao',' $classificacao','$temporada','$bilheteria')";
        if ($db->insertDB($query) == true) {
            setcookie("login", $login);
            header("Location:../CadastrarMidia.php?sucesso=1");
        } else {
            header("Location:../CadastrarMidia.php?sucesso=0");
        }
        ?>
    </body>
</html>
