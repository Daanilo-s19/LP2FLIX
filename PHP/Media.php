<?php
    //LEMBRAR DE BOTAR A CLASSE COMO ABSTRATA
    //INSERIR APENAS OS GET E SET QUE SERÃO UTILIZADOS
    abstract class Media {
     protected $indice, $tipo, $genero, $titulo,$diretor,$elenco,$imagem,$sinopse,$ano,$avaliacao,$duracao, $classificacao; // atributos
     
     //CONSTRUTOR COMENTADO POR MOTIVO DE TESTE
    public function __construct($indice, $tipo, $genero, $titulo,$diretor,$elenco,$imagem,$sinopse,$ano,$avaliacao,$duracao, $classificacao){
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
    }
     public function CadastrarFilme(){
         
     }
     public function RetirarFilme(){
         
     }

    public function cartaz($login){
       echo "  <div class=\"col-md-2 w3l-movie-gride-agile\">
                                            <a href=\"ExibirFilme.php?indice={$this->indice}&login=$login\" class=\"hvr-shutter-out-horizontal\"><img src={$this->imagem} title=\"album-name\" class=\"img-responsive\" alt=\" \" />
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
   public function Exibiçao(){
       echo "
        <h4 class=\"latest-text w3_latest_text w3_home_popular\">{$this->titulo}</h4>
         <div class=\"container\">
                   <div class=\"col-md-6 agile_tv_series_grid_left\">
                                                <div class=\"w3ls_market_video_grid1\">
                                                   <a href=\"https://www.youtube.com/watch?v=VFsmuRPClr4\" class=\"hvr-shutter-out-horizontal\"> <img src=\"ExibirImages/{$this->imagem}\"alt=\" \" class=\"img-responsive\" />
                                                    <a href=\"https://www.youtube.com/watch?v=VFsmuRPClr4\"  class=\"w3_play_icon\" href=\"#small-dialog\">
                                                        <span class=\"glyphicon glyphicon-play-circle\" aria-hidden=\"true\"></span>
                                                    </a>
                                                </div>
                                            </div>
                                    <div class=\"col-md-6 agile_tv_series_grid_right\">
                                                <p class=\"fexi_header_para\"><span class=\"conjuring_w3\">Sinopse<label>:</label></span>{$this->sinopse}</p>
                                                <p class=\"fexi_header_para\"><span>Data de lançamento<label>:</label></span>{$this->ano}</p>
                                                <p class=\"fexi_header_para\"><span>Classificação<label>:</label></span>{$this->classificacao} anos</p>
                                                  <p class=\"fexi_header_para\"><span>Duração<label>:</label></span>{$this->duracao} min.</p>
                                                <p class=\"fexi_header_para\"><span>Gênero<label>:</label></span>{$this->genero} </p>
                                                 <p class=\"fexi_header_para\"><span>Diretor<label>:</label></span>{$this->diretor}</p>
                                                 <p class=\"fexi_header_para\"><span>Elenco<label>:</label> </span>{$this->elenco}</p>
                                                <p class=\"fexi_header_para fexi_header_para1\"><span>Estrela<label>:</label></span>{$this->avaliacao}
                                                    <a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a>
                                                </p>
                                            </div>
                                        </div>";
   }
  
   public function Preferencia($ClickCount){ // RETORNA A PREFERÊNCIA A PARTIR DE QUANTAS VEZES A MIDIA FOI ASSISTIDA POR UM USUÁRIO
   }
   
   
}
?>