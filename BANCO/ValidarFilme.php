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
        require_once ("../PHP/Filme.php");
        require_once ("../PHP/serie.php");


        $GM = new GM();
        $temporada = $_POST["temporada"];
        
        if ($temporada != NULL) {
            $serie = new Serie(0, $_POST["tipo"], $_POST["genero"], $_POST["titulo"], $_POST["diretor"], $_POST["elenco"], $_POST["imagem"], $_POST["sinopse"], $_POST["ano"], $_POST["avaliacao"], $_POST["duracao"], $_POST["classificacao"], $_POST["temporada"]);
            $GM->InserirMidia($serie);
        } else {
            $filme = new Filme(0, $_POST["tipo"], $_POST["genero"], $_POST["titulo"], $_POST["diretor"], $_POST["elenco"], $_POST["imagem"], $_POST["sinopse"], $_POST["ano"], $_POST["avaliacao"], $_POST["duracao"], $_POST["classificacao"], $_POST["bilheteria"]);
            $GM->InserirMidia($filme);
        }
        ?>
    </body>
</html>
