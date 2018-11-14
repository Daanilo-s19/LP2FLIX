<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>BACANAFLIX</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
        <link href="css/single.css" rel='stylesheet' type='text/css' />
        <link href="css/medile.css" rel='stylesheet' type='text/css' />
        <!-- banner-slider -->
        <link href="css/jquery.slidey.min.css" rel="stylesheet">
        <!-- //banner-slider -->
        <!-- pop-up -->
        <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //pop-up -->
        <!-- font-awesome icons -->
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <!-- //font-awesome icons -->
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- banner-bottom-plugin -->
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
        <script src="js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({

                    autoPlay: 3000, //Set AutoPlay to 3 seconds

                    items: 5,
                    itemsDesktop: [640, 4],
                    itemsDesktopSmall: [414, 3]

                });

            });
        </script> 
        <!-- //banner-bottom-plugin -->
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <!-- flexSlider -->
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
                <script defer src="js/jquery.flexslider.js"></script>
                <script type="text/javascript">
                    $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        start: function (slider) {
                            $('body').removeClass('loading');
                        }
                    });
                    });
                </script>
                <!-- //flexSlider -->
    </head>

    <body>
        <!-- header -->
        <div class="header">
           <?php require_once 'BaseSite.php';
           $head = new BaseSite(); $head->Header();
           ?>
        </div>
        <!-- //header -->      
        <script>
            $('.toggle').click(function () {
                // Switches the Icon
                $(this).children('i').toggleClass('fa-pencil');
                // Switches the forms  
                $('.form').animate({
                    height: "toggle",
                    'padding-top': 'toggle',
                    'padding-bottom': 'toggle',
                    opacity: "toggle"
                }, "slow");
            });
        </script>
        <!-- //bootstrap-pop-up -->
        <!-- nav -->
        <div class="movies_nav">
            <div class="container">
                <nav class="navbar navbar-default">                   
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <nav>
                             <?php require_once 'BaseSite.php';
                            $nav = new BaseSite(); $nav->Nav();
                            ?>
                        </nav>
                    </div>
                </nav>	
            </div>
        </div>
        <!-- //nav -->
       
       
        <div class="general_social_icons">
            <nav class="social">
                <ul>
                    <li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
                    <li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
                    <li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
                    <li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>				  
                </ul>
            </nav>
        </div>
        
        <!-- Latest-tv-series -->
        <div class="Latest-tv-series">
            <h4 class="latest-text w3_latest_text w3_home_popular">AÇÃO</h4>
            <div class="container">
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                        <?php
                        require_once("../PHP/Media.php");
                        require_once("../PHP/dbcontroller.php");
                        $db = new DBController();

                        // Selecionar registros da tabela midia
                        $query ="SELECT  * FROM midia";
                        $results = $db->selectDB($query);
                        //FOREACH PARA AGRUPAR TODOS OS OBJS DO GENERO AÇÃO EM UM VETOR 
                        $filmes=[];  
                        foreach($results as $filmes) {
                            $obj= new Media($filmes["ident"], $filmes["tipo"], $filmes["genero"], $filmes["titulo"], $filmes["diretor"], $filmes["elenco"], $filmes["imagem"], $filmes["sinopse"], $filmes["ano"], $filmes["avaliacao"], $filmes["duracao"], $filmes["classificacao"]);
                            $filmes[] = $obj;
                           
                        }
                        var_dump($filmes[0]);
                         for($lista = 0; $lista<3; $lista++ ){ // O TOTAL DE LISTA É COM BASE NO NUMERO DE OBJETO DIVIDIDO POR 6
                            echo "  
                                <li>
                                    <div class=\"agile_tv_series_grid\">"; 
                                      $filme = new Media();                                  
                                      for ($i = 0; $i < 6; $i++) 
                                          $filme->cartaz();
                            echo "
                                    </div>
                               </li>";
                         }
                        ?>
                            
                        </ul>
                    </div>
                </section>                
            </div>
        </div>
        
        <!-- pop-up-box -->  
        <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
        <!--//pop-up-box -->
        <div id="small-dialog" class="mfp-hide">
            <iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>
        </div>
        <div id="small-dialog1" class="mfp-hide">
            <iframe src="https://player.vimeo.com/video/148284736"></iframe>
        </div>
        <div id="small-dialog2" class="mfp-hide">
            <iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
        </div>        
        <!-- //Latest-tv-series -->
       
        <!-- general -->
        <div class="general">
            <h4 class="latest-text w3_latest_text">PENSANDO EM VOCÊ</h4>
            <div class="container">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Recomendações</a></li>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Destaque</a></li>
                        <li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">Assistir Novamente</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                            <div class="w3_agile_featured_movies">
                                 <?php
                                 echo "40 linhas em 2 KKKKKKKKK";
                                    require_once("../PHP/Media.php"); 
                                    $filme = new Media();                                  
                                    for ($i = 0; $i < 4; $i++) 
                                        $filme->cartaz();
                                   ?>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">                                
                                <?php
                                 echo "4OPAAA";
                                    require_once("../PHP/Media.php"); 
                                    $filme = new Media();                                  
                                    for ($i = 0; $i < 5; $i++) 
                                        $filme->cartaz();
                                   ?>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
                             <?php
                                 echo "aeeeee";
                                    require_once("../PHP/Media.php"); 
                                    $filme = new Media();                                  
                                    for ($i = 0; $i < 10; $i++) 
                                        $filme->cartaz();
                               ?>
                            
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
        <!-- //general -->
        
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="w3ls_footer_grid">
                    <div class="col-md-6 w3ls_footer_grid_left">                       
                    </div>
                    <div class="col-md-6 w3ls_footer_grid_right">
                        <a href="SiteIndex.php" ><h1>BACANA<span>FLIX</span></h1></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-5 w3ls_footer_grid1_left">
                    <p>&copy; 2016 One Movies. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
                </div>                
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //footer -->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script>
                    $(document).ready(function () {
                        $(".dropdown").hover(
                                function () {
                                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                                    $(this).toggleClass('open');
                                },
                                function () {
                                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                                    $(this).toggleClass('open');
                                }
                        );
                    });
        </script>
        <!-- //Bootstrap Core JavaScript -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //here ends scrolling icon -->
    </body>
</html>