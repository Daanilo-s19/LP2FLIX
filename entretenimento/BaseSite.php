<?php
class BaseSite {
    public function Header($login){
        echo " <div class=\"container\">
                <div class=\"w3layouts_logo\">
                    <a href=\"SiteIndex.php?login=$login\" ><h1>BACANA<span>FLIX</span></h1></a>
                </div>
                <div class=\"w3_search\">
                    <form action=\"ExibirFilme.php?indice=SEARCH&tipo=X&login=$login&duracao=10\" method=\"POST\">
                        <input type=\"text\" name=\"procurar\" placeholder=\"PROCURAR FILME\" required=\"\">
                        <input type=\"submit\" value=\"Go\">
                    </form>
                </div>
              
                <div class=\"clearfix\"> </div>
            </div>";
    }
    public function Nav($login){
        echo "     <ul class=\"nav navbar-nav\">
                                <li ><a href=\"#\"></a></li>
                                <li><a href=\"SiteIndex.php?login=$login\">Principal</a></li>
                                <li class=\"dropdown\">
                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">FILMES<b class=\"caret\"></b></a>
                                    <ul class=\"dropdown-menu multi-column columns-3\">
                                        <li>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"MidiaCategoria.php?tipo=FILME&genero=ACAO&login=$login\">AÇÃO</a></li>
                                                    <li><a href=\"MidiaCategoria.php?tipo=FILME&genero=AVENTURA&login=$login\">AVENTURA</a></li>
                                                    <li><a href=\"MidiaCategoria.php?tipo=FILME&genero=ANIMACAO&login=$login\">ANIMAÇÃO</a></li>
                                                    <li><a href=\"MidiaCategoria.php?tipo=FILME&genero=DRAMA&login=$login\">DRAMA</a></li>
                                                    <li><a href=\"MidiaCategoria.php?tipo=FILME&genero=TERROR&login=$login\">TERROR</a></li>
                                                   
                                                </ul>
                                            </div>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>                                                    
                                                </ul>
                                            </div>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>
                                                    <li><a href=\"#\">#</a></li>                                                
                                                </ul>
                                            </div>
                                            <div class=\"clearfix\"></div>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href=\"MidiaCategoria.php?tipo=SERIE&genero=SERIE&login=$login\">SÉRIES</a></li>                                
                                <li><a href=\"short-codes.html\">Perfumarias</a></li>
                                <li><a href=\"../index.php\">SAIR</a></li>
                                <li><a href=\"#\"></a></li> 
                            </ul>";
        
    }
}
