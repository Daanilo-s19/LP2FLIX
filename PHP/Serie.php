<?php
require_once 'Media.php';

class Serie extends Media {
    protected $temporada;
    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao,$temporada) {
        parent::__construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao);
    
        $this->temporada = $temporada;
    }
    
    public function Exibiçao() {
        parent::Exibiçao();
         echo "
             <p class=\"fexi_header_para\"><span>Temporadas<label>:</label> </span>{$this->temporada} temporadas</p>
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