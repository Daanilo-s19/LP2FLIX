<?php
class BaseSite {
    public function Header(){
        echo " <div class=\"container\">
                <div class=\"w3layouts_logo\">
                    <a href=\"SiteIndex.php\" ><h1>BACANA<span>FLIX</span></h1></a>
                </div>
                <div class=\"w3_search\">
                    <form action=\"#\" method=\"post\">
                        <input type=\"text\" name=\"Search\" placeholder=\"Search\" required=\"\">
                        <input type=\"submit\" value=\"Go\">
                    </form>
                </div>
              
                <div class=\"clearfix\"> </div>
            </div>";
    }
    public function Nav(){
        echo "     <ul class=\"nav navbar-nav\">
                                <li ><a href=\"#\"></a></li>
                                <li><a href=\"SiteIndex.php\">Principal</a></li>
                                <li class=\"dropdown\">
                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">FILMES<b class=\"caret\"></b></a>
                                    <ul class=\"dropdown-menu multi-column columns-3\">
                                        <li>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"genres.html\">AÇÃO</a></li>
                                                    <li><a href=\"genres.html\">BIOGRAFIA</a></li>
                                                    <li><a href=\"genres.html\">CRIME</a></li>
                                                    <li><a href=\"genres.html\">FAMILIA</a></li>
                                                    <li><a href=\"horror.html\">HORROR</a></li>
                                                    <li><a href=\"genres.html\">ROMANCE</a></li>                                               
                                                    <li><a href=\"genres.html\">GUERRA</a></li>
                                                </ul>
                                            </div>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"genres.html\">AVENTURA</a></li>
                                                    <li><a href=\"comedy.html\">COMEDIA</a></li>
                                                    <li><a href=\"genres.html\">DOCUMENTÁRIO</a></li>
                                                    <li><a href=\"genres.html\">FANTASIA</a></li>                                                    
                                                </ul>
                                            </div>
                                            <div class=\"col-sm-4\">
                                                <ul class=\"multi-column-dropdown\">
                                                    <li><a href=\"genres.html\">ANIMAÇÃO</a></li>
                                                    <li><a href=\"genres.html\">DRAMA</a></li>
                                                    <li><a href=\"genres.html\">HISTÓRIA</a></li>
                                                    <li><a href=\"genres.html\">MUSICAL</a></li>                                                
                                                </ul>
                                            </div>
                                            <div class=\"clearfix\"></div>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href=\"series.html\">SÉRIES</a></li>                                
                                <li><a href=\"short-codes.html\">Perfumarias</a></li>
                                <li><a href=\"list.html\">lista de A-Z </a></li>
                                <li><a href=\"#\"></a></li> 
                            </ul>";
        
    }
}