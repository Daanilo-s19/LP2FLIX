<?php

require_once 'Media.php';

class Filme extends Media {

    protected $bilheteria;

    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao, $bilheteria) {
        parent::__construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao);

        $this->bilheteria = $bilheteria;
    }

    public function Exibiçao() {
        parent::Exibiçao();        
        echo "
             <p class=\"fexi_header_para\"><span>Bilheteria<label>:</label> </span>{$this->bilheteria}</p>
                </div>
                   </div>";
    }
    
    function getBilheteria() {
        return $this->bilheteria;
    }

    function setBilheteria($bilheteria) {
        $this->bilheteria = $bilheteria;
    }



}

?>