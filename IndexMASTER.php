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
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
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
        <h3>BEM VINDO, MESTRE!</h3>

        <?php
        @$erro = $_GET["err"];
        if ($erro == true)
            echo "<h4> ERRO! VERIFIQUE LOGIN E SENHA </h4>";
        ?>
        <div class="w3ls-bot">
            <div class="w3ls-login box box--big">

                <div class="w3ls-bot">
                    <form action="entretenimento/SiteIndex.php" method="post">
                        <input type="submit" value="ENTRAR NO BACANAFLIX">  
                    </form>
                </div>
                <div class="w3ls-bot">			
                    <form method="POST" action="../phpmyadmin" name="CADASTRO">                                  
                        <input type="submit" value="ENTRAR NO PHPMYADMIN">                                    
                    </form>
                </div>
                
            </div>  
        </div>
        <div class="w3ls-bot">
            <div class="w3ls-login box box--big">
                <div class="w3ls-bot">			
                    <form method="POST" action="CadastrarMidia.php" name="CADASTRO">                                  
                        <input type="submit" value="CADASTRAR MIDIA">                                    
                    </form>
                </div>
                <div class="w3ls-bot">			
                    <form method="POST" action="RetirarUsuario.php" name="CADASTRO">                                  
                        <input type="submit" value="RETIRAR USUÁRIO">                                    
                    </form>
                </div>
                <div class="w3ls-bot">			
                    <form method="POST" action="RetirarMidia.php" name="CADASTRO">                                  
                        <input type="submit" value="RETIRAR MIDIA">                                    
                    </form>
                </div>
            </div>  
        </div>

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