<?php

require_once("../BANCO/dbcontroller.php");

abstract class Media {

    protected $indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao; // atributos
    protected $db;

    //CONSTRUTOR COMENTADO POR MOTIVO DE TESTE

    public function __construct($indice, $tipo, $genero, $titulo, $diretor, $elenco, $imagem, $sinopse, $ano, $avaliacao, $duracao, $classificacao) {
        $this->indice = $indice;
        $this->titulo = $titulo;
        $this->tipo = $tipo; // SERIE / FILME
        $this->ano = $ano;
        $this->diretor = $diretor;
        $this->elenco = $elenco;
        $this->avaliacao = $avaliacao;
        $this->sinopse = $sinopse;
        $this->genero = $genero; // DRAMA ETC ETC
        $this->duracao = $duracao;
        $this->imagem = $imagem;
        $this->classificacao = $classificacao; //IDADE
        $this->db = new DBController();
    }

    public function cartaz($login) {
        echo "  <div class=\"col-md-2 w3l-movie-gride-agile\">
                                            <a href=\"ExibirFilme.php?indice={$this->indice}&tipo={$this->tipo}&titulo={$this->titulo}&login=$login&duracao={$this->duracao}\" class=\"hvr-shutter-out-horizontal\"><img src={$this->imagem} title=\"{$this->titulo}\" class=\"img-responsive\" alt=\" \" />
                                                <div class=\"w3l-action-icon\"><i class=\"fa fa-play-circle\" aria-hidden=\"true\"></i></div>
                                            </a>
                                            <div class=\"mid-1 agileits_w3layouts_mid_1_home\">
                                                <div class=\"w3l-movie-text\">
                                                    <h6><a href=\"ExibirFilme.php\"TITULO DO FILME OCULTO></a></h6>							
                                                </div>
                                                <div class=\"mid-2 agile_mid_2_home\">
                                                    <p>{$this->ano}</p>
                                                    <div class=\"block-stars\">
                                                        <ul class=\"w3l-ratings\">";
                                                          for($i =0; $i < $this->getAvaliacao(); $i++)
                                                           echo" <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>";
                                                            
                                                       echo "</ul>
                                                    </div>
                                                    <div class=\"clearfix\"></div>
                                                </div>
                                            </div>
                                        </div>";
    }

    public function Exibiçao($video) {
        echo "
        <h4 class=\"latest-text w3_latest_text w3_home_popular\">{$video->getTitulo()}</h4>
         <div class=\"container\">
                   <div class=\"col-md-6 agile_tv_series_grid_left\">
                                                <div class=\"w3ls_market_video_grid1\">
                                                   <a href=\"https://www.youtube.com/results?search_query={$video->getTitulo()}\" target=\"_blank\" class=\"hvr-shutter-out-horizontal\"> <img src=\"ExibirImages/{$video->getImagem()}\"alt=\" \" class=\"img-responsive\" />
                                                    <a href=\"https://www.youtube.com/results?search_query={$video->getTitulo()}\" target=\"_blank\" class=\"w3_play_icon\" href=\"#small-dialog\">
                                                        <span class=\"glyphicon glyphicon-play-circle\" aria-hidden=\"true\"></span>
                                                    </a>
                                                </div>
                                            </div>
                                    <div class=\"col-md-6 agile_tv_series_grid_right\">
                                                <p class=\"fexi_header_para\"><span class=\"conjuring_w3\">SINOPSE<label>:</label></span>{$video->getSinopse()}</p>
                                                <p class=\"fexi_header_para\"><span>LANCAMENTO<label>:</label></span>{$video->getAno()}</p>
                                                <p class=\"fexi_header_para\"><span>CLASSIFICAÇÃO<label>:</label></span>{$video->getClassificacao()} anos</p>
                                                <p class=\"fexi_header_para\"><span>DURACAO<label>:</label></span>{$video->getDuracao()} min.</p>
                                                <p class=\"fexi_header_para\"><span>GENERO<label>:</label></span>{$video->getGenero()} </p>
                                                <p class=\"fexi_header_para\"><span>DIRETOR<label>:</label></span>{$video->getDiretor()}</p>
                                                <p class=\"fexi_header_para\"><span>ELENCO<label>:</label> </span>{$video->getElenco()}</p>";
                                                for($i =0; $i < $video->getAvaliacao(); $i++){
                                                    if($i== 0)echo "<p  class=\"fexi_header_para fexi_header_para1\"><span>ESTRELAS<label>:</label></span>"; 
                                                    echo"<a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>";
                                                }
                                               echo "</p>";
    }
    

    public function corousel($login) {
        $lista = 0;
        $flag = false;
        $results = $this->db->selectDB("SELECT * FROM midia");
        foreach ($results as $midia) {
            if (!$flag) {// ABRE A LISTA
                echo "<li> <div class=\"agile_tv_series_grid\">";
                $flag = true;
                $lista++;
            }
            if ($midia["tipo"] == "FILME" && $midia["genero"] == $this->getGenero()) {//MOSTRA O FILME DO GENERO
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($login);
                $lista++;
            }
            if ($midia["tipo"] == "SERIE" && $this->getGenero() == NULL) {
                $video = new Serie($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($login);
                $lista++;
            }
            if (($lista % 7) == 0) {// FECHA A LISTA A CADA 7 FILMES
                echo "</div></li>";
                $flag = false;
            }
        }
    }

    abstract function Exibircategoria($login);

    public function __destruct() {
        $this->db->closeDB();
    }

    function getIndice() {
        return $this->indice;
    }

    function getTipo() {
        return $this->tipo;
    }

    function getGenero() {
        return $this->genero;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getDiretor() {
        return $this->diretor;
    }

    function getElenco() {
        return $this->elenco;
    }

    function getImagem() {
        return $this->imagem;
    }

    function getSinopse() {
        return $this->sinopse;
    }

    function getAno() {
        return $this->ano;
    }

    function getAvaliacao() {
        return $this->avaliacao;
    }

    function getDuracao() {
        return $this->duracao;
    }

    function getClassificacao() {
        return $this->classificacao;
    }

    function setIndice($indice) {
        $this->indice = $indice;
    }

    function setTipo($tipo) {
        $this->tipo = $tipo;
    }

    function setGenero($genero) {
        $this->genero = $genero;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setDiretor($diretor) {
        $this->diretor = $diretor;
    }

    function setElenco($elenco) {
        $this->elenco = $elenco;
    }

    function setImagem($imagem) {
        $this->imagem = $imagem;
    }

    function setSinopse($sinopse) {
        $this->sinopse = $sinopse;
    }

    function setAno($ano) {
        $this->ano = $ano;
    }

    function setAvaliacao($avaliacao) {
        $this->avaliacao = $avaliacao;
    }

    function setDuracao($duracao) {
        $this->duracao = $duracao;
    }

    function setClassificacao($classificacao) {
        $this->classificacao = $classificacao;
    }

}

?>