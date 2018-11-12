<?php

class Site {

    public function head() {
        echo " <title>VAGABAFLIX:Filmes /Séries</title>";
    }
    public function menu() {
        echo "<div class=\"menu\">
				<ul>
                                    <li><a class=\"active\" href=\"index.php\"><i class=\"home\"></i></a></li>
					<li><a href=\"videos.html\"><div class=\"video\"><i class=\"videos\"></i><i class=\"videos1\"></i></div></a></li>
					<li><a href=\"reviews.html\"><div class=\"cat\"><i class=\"watching\"></i><i class=\"watching1\"></i></div></a></li>
					<li><a href=\"404.html\"><div class=\"bk\"><i class=\"booking\"></i><i class=\"booking1\"></i></div></a></li>
					<li><a href=\"contact.html\"><div class=\"cnt\"><i class=\"contact\"></i><i class=\"contact1\"></i></div></a></li>
				</ul>
			</div>";
    }

}
