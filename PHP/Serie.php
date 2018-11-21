<?php

require_once 'Media.php';

class Serie extends Media {

    protected $temporada;

    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao, $temporada) {
        parent::__construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao);

        $this->temporada = $temporada;
    }

    public function Exibiçao($video) {
        $results = $this->db->selectDB("SELECT * FROM midia WHERE indice ='{$this->getIndice()}'");
        foreach ($results as $midia)
            $video = new Serie($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
        
        parent::Exibiçao($video);
        echo "
             <p class=\"fexi_header_para\"><span>Temporadas<label>:</label> </span>{$video->getTemporada()} temporadas</p>
                </div>
                   </div>";
    }

    function getTemporada() {
        return $this->temporada;
    }

    function setTemporada($temporada) {
        $this->temporada = $temporada;
    }

}

?>