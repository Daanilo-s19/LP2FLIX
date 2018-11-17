<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title>BACANAFLIX</title>
        <!-- Meta-Tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Clear login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- //Meta-Tags -->
        <!-- Stylesheets -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!--// Stylesheets -->
        <!--fonts-->
        <!-- title -->
        <!-- body -->
        <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
        <!--//fonts-->
    </head>

    <body>   
        <h1>BACANAFLIX</h1>
        <?php
        $sucesso = isset($_GET["sucesso"]) ? $_GET["sucesso"] : null;

        if ($sucesso != NULL) {
            if ($sucesso) {
                echo "<h3>FILME CADASTRADO COM SUCESSO </h3>";
             echo " <div class=\"w3ls-login box box--big\" >
                        <div class=\"w3ls-bot\">
                            <div class=\"form-end\">
                                    <form action=\"CadastrarMidia.php\" method=\"POST\">  
                                        <input type=\"submit\" value=\"CONTINUAR\">
                                    </form>
                            </div>
                        </div> 
                             <div class=\"w3ls-bot\">
                                <div class=\"form-end\">
                                    <form action=\"IndexMASTER.php\" method=\"POST\">
                                        <input type=\"submit\" value=\"RETORNAR\">
                                    </form>
                                 </div>
                             </div> 
                         
                    </div>";
            } else
                echo "<h3> CADASTRO INVALIDO </h3>";
        }
        else{ 
echo "  
        <div class=\"w3ls-login box box--big\">
            <!-- form starts here -->
            <form action=\"BANCO/ValidarFilme.php\" method=\"POST\">               
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"tipo\" placeholder=\"TIPO DO FILME\" required=\"\" id=\"myInput\" />			
                </div>
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"genero\" placeholder=\"GENERO DO FILME\" required=\"\" id=\"myInput\" />			
                </div>	
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"titulo\" placeholder=\"TITULO DO FILME\" required=\"\"  />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"diretor\" placeholder=\"DIRETOR DO FILME\" required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"elenco\" placeholder=\"ELENCO DO FILME\" required=\"\" />			
                </div>
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"imagem\" placeholder=\"IMAGEM DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"text\" name=\"sinopse\" placeholder=\"SINOPSE DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"ano\" placeholder=\"ANO DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"avalicao\" placeholder=\"AVALIACAO DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"duracao\" placeholder=\"DURACAO DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"classificacao\" placeholder=\"CLASSIFICACAO DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"temporada\" placeholder=\"TEMPORADA DO FILME\"required=\"\" />			
                </div> 
                <div class=\"agile-field-txt\">                           
                    <input type=\"number\" name=\"bilheteria\" placeholder=\"BILHETERIA DO FILME\"required=\"\" />			
                </div> 
                <div class=\"w3ls-bot\">				
                    <div class=\"form-end\">
                        <input type=\"submit\" value=\"CADASTRAR FILME\"> 
                    </div> 

                    <div class=\"clearfix\"></div>                       
                </div> 
            </form>
        </div>";
      }          
    ?> 
        <!-- //form ends here -->
        <!--copyright-->
        <div class="copy-wthree">
            <p>© 2018 Clear Login Form. All Rights Reserved | Design by
                <a href="http://w3layouts.com/" target="_blank">W3layouts</a>
            </p>
        </div>
        <!--//copyright-->
    </body>

</html>
