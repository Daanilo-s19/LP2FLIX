<?php

require_once 'Media.php';

class Filme extends Media {

    protected $bilheteria;

    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao, $bilheteria) {
        parent::__construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao);

        $this->bilheteria = $bilheteria;
    }

    public function Exibiçao($video) {
        $results = $this->db->selectDB("SELECT * FROM midia WHERE indice ='{$this->getIndice()}'");                 
            foreach ($results as $midia) // EXIBE O FILME SELECIONADO. REFAZ O OBJ A PARTIR DO INDICE
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
           
        parent::Exibiçao($video);
        echo "
             <p class=\"fexi_header_para\"><span>Bilheteria<label>:</label> </span>'$'{$video->getBilheteria()}</p>
                </div>
                   </div>";
             
    }
    public function __destruct() {
        $this->db->closeDB();
    }

    function getBilheteria() {
        return $this->bilheteria;
    }

    function setBilheteria($bilheteria) {
        $this->bilheteria = $bilheteria;
    }

}

?>