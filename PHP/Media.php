<?php
    //LEMBRAR DE BOTAR A CLASSE COMO ABSTRATA
    //INSERIR APENAS OS GET E SET QUE SERÃO UTILIZADOS
class Media {
     protected $titulo, $ano,$diretor,$ator,$avaliacao,$sinopse,$classificacao,$genero,$duracao;
     
     //CONSTRUTOR COMENTADO POR MOTIVO DE TESTES
     
    /* function __construct($titulo, $ano, $diretor, $ator, $avaliacao, $sinopse, $classificacao, $genero, $duracao) {
         $this->titulo = $titulo;
         $this->ano = $ano;
         $this->diretor = $diretor;
         $this->ator = $ator;
         $this->avaliacao = $avaliacao;
         $this->sinopse = $sinopse;
         $this->classificacao = $classificacao;
         $this->genero = $genero;
         $this->duracao = $duracao;
     }*/
     public function CadastrarFilme(){
         
     }
     public function RetirarFilme(){
         
     }

    public function cartaz(){
       echo "  <div class=\"col-md-2 w3l-movie-gride-agile\">
                                            <a href=\"ExibirFilme.php\" class=\"hvr-shutter-out-horizontal\"><img src=\"images/m22.jpg\" title=\"album-name\" class=\"img-responsive\" alt=\" \" />
                                                <div class=\"w3l-action-icon\"><i class=\"fa fa-play-circle\" aria-hidden=\"true\"></i></div>
                                            </a>
                                            <div class=\"mid-1 agileits_w3layouts_mid_1_home\">
                                                <div class=\"w3l-movie-text\">
                                                    <h6><a href=\"ExibirFilme.php\">Assassin's Creed 3</a></h6>							
                                                </div>
                                                <div class=\"mid-2 agile_mid_2_home\">
                                                    <p>2016</p>
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
        <h4 class=\"latest-text w3_latest_text w3_home_popular\">the conjuring 2</h4>
         <div class=\"container\">
                   <div class=\"col-md-6 agile_tv_series_grid_left\">
                                                <div class=\"w3ls_market_video_grid1\">
                                                   <a href=\"https://www.youtube.com/watch?v=VFsmuRPClr4\" class=\"hvr-shutter-out-horizontal\"> <img src=\"images/h1-1.jpg\" alt=\" \" class=\"img-responsive\" />
                                                    <a href=\"https://www.youtube.com/watch?v=VFsmuRPClr4\"  class=\"w3_play_icon\" href=\"#small-dialog\">
                                                        <span class=\"glyphicon glyphicon-play-circle\" aria-hidden=\"true\"></span>
                                                    </a>
                                                </div>
                                            </div>
                                    <div class=\"col-md-6 agile_tv_series_grid_right\">
                                                <p class=\"fexi_header_para\"><span class=\"conjuring_w3\">Sinopse<label>:</label></span> 720p,Bluray HD Free Movie Downloads, Watch Free Movies Online with high speed Free Movie Streaming | MyDownloadTube Lorraine and Ed Warren go to north London to help a single...</p>
                                                <p class=\"fexi_header_para\"><span>Data de lançamento<label>:</label></span> Jun 10, 2016 </p>
                                                <p class=\"fexi_header_para\"><span>Classificação<label>:</label></span> 10 anos </p>
                                                  <p class=\"fexi_header_para\"><span>Duração<label>:</label></span> 60min </p>
                                                <p class=\"fexi_header_para\"><span>Gênero<label>:</label> </span>
                                                    <a href=\"genres.html\">Drama</a> | 
                                                    <a href=\"genres.html\">Adventure</a> | 
                                                    <a href=\"genres.html\">Family</a>								
                                                </p>
                                                 <p class=\"fexi_header_para\"><span>Diretor<label>:</label> </span>
                                                    <a href=\"genres.html\">GABURU, Diabiolo</a> |	
                                                </p>
                                                 <p class=\"fexi_header_para\"><span>Elenco<label>:</label> </span>
                                                    <a href=\"genres.html\">Eu</a> | 
                                                    <a href=\"genres.html\">Voce</a> | 
                                                    <a href=\"genres.html\">Eo zubumafuu</a>								
                                                </p>
                                                <p class=\"fexi_header_para fexi_header_para1\"><span>Estrela<label>:</label></span>
                                                    <a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a>
                                                    <a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a>
                                                    <a href=\"#\"><i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i></a>
                                                    <a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a>
                                                    <a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a>
                                                </p>
                                            </div>
                                        </div>";
   }
}