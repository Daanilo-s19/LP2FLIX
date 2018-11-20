<?php
require_once("../BANCO/dbcontroller.php");

abstract class Media{

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
                                            <a href=\"ExibirFilme.php?indice={$this->indice}&tipo={$this->tipo}&login=$login\" class=\"hvr-shutter-out-horizontal\"><img src={$this->imagem} title=\"album-name\" class=\"img-responsive\" alt=\" \" />
                                                <div class=\"w3l-action-icon\"><i class=\"fa fa-play-circle\" aria-hidden=\"true\"></i></div>
                                            </a>
                                            <div class=\"mid-1 agileits_w3layouts_mid_1_home\">
                                                <div class=\"w3l-movie-text\">
                                                    <h6><a href=\"ExibirFilme.php\">{$this->titulo}</a></h6>							
                                                </div>
                                                <div class=\"mid-2 agile_mid_2_home\">
                                                    <p>{$this->ano}</p>
                                                    <div class=\"block-stars\">
                                                        <ul class=\"w3l-ratings\">
                                                            <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>
                                                            <li><a href=\"#\"><i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i></a></li>
                                                            <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>
                                                            <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>
                                                            <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class=\"clearfix\"></div>
                                                </div>
                                            </div>
                                            <div class=\"ribben\">
                                                <p>NOVO</p>
                                            </div>
                                        </div>";
    }

    public function Exibiçao() {
        echo "
        <h4 class=\"latest-text w3_latest_text w3_home_popular\">{$this->titulo}</h4>
         <div class=\"container\">
                   <div class=\"col-md-6 agile_tv_series_grid_left\">
                                                <div class=\"w3ls_market_video_grid1\">
                                                   <a href=\"https://www.youtube.com/results?search_query={$this->titulo}\" class=\"hvr-shutter-out-horizontal\"> <img src=\"ExibirImages/{$this->imagem}\"alt=\" \" class=\"img-responsive\" />
                                                    <a href=\"https://www.youtube.com/results?search_query={$this->titulo}\"  class=\"w3_play_icon\" href=\"#small-dialog\">
                                                        <span class=\"glyphicon glyphicon-play-circle\" aria-hidden=\"true\"></span>
                                                    </a>
                                                </div>
                                            </div>
                                    <div class=\"col-md-6 agile_tv_series_grid_right\">
                                                <p class=\"fexi_header_para\"><span class=\"conjuring_w3\">SINOPSE<label>:</label></span>{$this->sinopse}</p>
                                                <p class=\"fexi_header_para\"><span>LANCAMENTO<label>:</label></span>{$this->ano}</p>
                                                <p class=\"fexi_header_para\"><span>CLASSIFICAÇÃO<label>:</label></span>{$this->classificacao} anos</p>
                                                  <p class=\"fexi_header_para\"><span>DURACAO<label>:</label></span>{$this->duracao} min.</p>
                                                <p class=\"fexi_header_para\"><span>GENERO<label>:</label></span>{$this->genero} </p>
                                                 <p class=\"fexi_header_para\"><span>DIRETOR<label>:</label></span>{$this->diretor}</p>
                                                 <p class=\"fexi_header_para\"><span>ELENCO<label>:</label> </span>{$this->elenco}</p>
                                                <p class=\"fexi_header_para fexi_header_para1\"><span>ESTRELAS<label>:</label></span>{$this->avaliacao}
                                                    <a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></p>";
    }

    public function recomendado() {
        $results = $this->db->selectDB("SELECT * FROM midia");
        foreach ($results as $midia) {
            if ($midia["tipo"] == "FILME") {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($_GET["login"]);
            } else {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($_GET["login"]);
            }
        }
    }

    public function destaque() {
        $results = $this->db->selectDB("SELECT * FROM midia AS m INNER JOIN destaque AS v  ON m.indice = v.indice  ORDER BY `score` DESC");
        foreach ($results as $midia) {
            if ($midia["tipo"] == "FILME") {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($_GET["login"]);
            } else {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($_GET["login"]);
            }
        }
    }

    public function visitados($login) {
        $results = $this->db->selectDB("SELECT * FROM midia AS m INNER JOIN visitados AS v  ON m.indice = v.indice  WHERE login = '$login' ORDER BY `login` DESC");
        foreach ($results as $midia) {
            if ($midia["tipo"] == "FILME") {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($_GET["login"]);
            } else {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($_GET["login"]);
            }
        }
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