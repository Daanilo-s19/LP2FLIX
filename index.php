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
        
        <?php
        @$erro = $_GET["err"];        
        if($erro == true)
          echo "<h4> ERRO! VERIFIQUE LOGIN E SENHA </h4>";
        ?>
        
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
                <form action="Login.php" method="post">
			<div class="agile-field-txt">
                            <label><i class="fa fa-user" aria-hidden="true"></i> LOGIN </label>
                            <input type="text" name="login" placeholder="INFORME LOGIN " required=""/>
			</div>
			<div class="agile-field-txt">
                            <label><i class="fa fa-envelope" aria-hidden="true"></i> SENHA </label>
                            <input type="password" name="senha" placeholder="INFORME SENHA " required="" id="myInput" />
			<div class="agile_label">
                            <input id="check3" name="check3" type="checkbox" value="show password" onclick="myFunction()">
                            <label class="check" for="check3">EXIBIR SENHA</label>
				</div>
			</div>
			<!-- script for show password -->
			
			<!-- //script ends here -->
			<div class="w3ls-bot">
				<div class="switch-agileits">
					<label class="switch">
                                       	<input type="checkbox">
					<span class="slider round"></span>Permanecer Logado</label>
				</div>
				<div class="form-end">
					<input type="submit" value="Entrar">  
                  </form>
				</div> 
        
				<div class="clearfix"></div>			
                        <form method="POST" action="Cadastro.php" name="CADASTRO">                                  
                            <input type="submit" value="CADASTRE-SE">                                    
                        </form>
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