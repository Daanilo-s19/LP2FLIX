<?php
require_once 'Media.php';
class Filme extends Media{
    protected $bilheteria;
    
    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao,$bilheteria) {
        parent::__construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao);
    
        $this->bilheteria = $bilheteria;
    }

}
?>