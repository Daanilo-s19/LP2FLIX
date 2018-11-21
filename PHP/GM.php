<?php
require_once("Media.php");
require_once("Filme.php");
require_once("Serie.php");
require_once("../BANCO/dbcontroller.php");

class GM {

    protected $db;

    public function __construct() {
        $this->db = new DBController();
    }

    public function __destruct() {
        $this->db->closeDB();
    }
    public function RetirarUser($login) {
        if ($this->db->deleteDB("DELETE FROM usuarios WHERE login = '$login' ") == true) {
            setcookie("login", $login);
            header("Location:../RetirarUsuario.php?sucesso=1");
        } else {
            header("Location:../RetirarUsuario.php?sucesso=0");
        }
       
    }

    public function RetirarFilme($titulo) {
        if ($this->db->deleteDB("DELETE FROM midia WHERE titulo = '$titulo' ") == true) {
            header("Location:../RetirarMidia.php?sucesso=1");
        } else {
            header("Location:../RetirarMidia.php?sucesso=0");
        }
         
    }

    public function InserirMidia($midia) {
        $this->ValidaMedia($midia);
    }

    private function ValidaMedia($midia) {
        $indice = 1;
        $results = $this->db->selectDB("SELECT * FROM midia ORDER BY indice DESC LIMIT 1");
        if ($results != NULL) {
            foreach ($results as $video)
                $indice = $video["indice"];
        }
        $indice++;
        $tipo = $midia->getTipo();
        $genero = $midia->getGenero();
        $titulo = $midia->getTitulo();
        $diretor = $midia->getDiretor();
        $elenco = $midia->getElenco();
        $imagem = $midia->getImagem();
        $sinopse = $midia->getSinopse();
        $ano = $midia->getAno();
        $avaliacao = $midia->getAvaliacao();
        $duracao = $midia->getDuracao();
        $classificacao = $midia->getClassificacao();
        if($tipo == "SERIE"){
            $temporada = $midia->getTemporada(); 
            $bilheteria = 0;
        } else {
              $bilheteria = $midia->getBilheteria();
              $temporada = 0;
            
        }
        $query = "INSERT INTO midia (indice, tipo, genero, titulo, diretor, elenco, imagem, sinopse, ano,"
        . " avaliacao, duracao, classificacao, temporada, bilheteria) VALUES ('$indice', '$tipo', '$genero','$titulo',' "
        . "$diretor','$elenco','$imagem','$sinopse','$ano','$avaliacao','$duracao',' $classificacao','$temporada','$bilheteria')";
        if ($this->db->insertDB($query) == true) {
            header("Location:../CadastrarMidia.php?sucesso=1");
        } else {
            header("Location:../CadastrarMidia.php?sucesso=0");
        }
        
    }

    public function InserirUser($usuario) {
        $login = $usuario->GetLogin();
        $senha = $usuario->GetSenha();
        $email = $usuario->GetEmail();
        $datanasc = $usuario->GetNasc();
        var_dump($usuario);
        $query = "INSERT INTO usuarios (login, senha, email,datanasc) VALUES ('$login', '$senha', '$email','$datanasc')";
        if ($this->db->insertDB($query) == true) {
            setcookie("login", $login);
            header("Location:../Cadastro.php?sucesso=1");
        } else {
            header("Location:../Cadastro.php?sucesso=0");
        }
         
    }

    public function RankingFilme($titulo, $indice, $duracao) {
        $results = $this->db->selectDB("SELECT * FROM destaque WHERE filme = '$titulo'"); //VERIFICA SE O FILME JÁ ESTÁ NO RANKING
        foreach ($results as $midia) {
            $exibido = $midia["exibido"];
            $ranking = $midia["score"];
        }
        if ($results == NULL) {  // SE NAO, INSIRA-O, SE SIM, ATUALIZE O CONTADOR
            $query = "INSERT INTO destaque (filme,indice, exibido, score) VALUES ('$titulo','$indice','1','$duracao')";
            $this->db->insertDB($query);
        } else {
            $ranking = ($exibido * $duracao) / 2;
            $exibido++;
            $query = "UPDATE destaque SET exibido = '$exibido', score = '$ranking' WHERE indice = '$indice'";
            $this->db->insertDB($query);
        }
         
    }

    public function ScoreUser($acesso, $login, $indice, $duracao) {
        $results = $this->db->selectDB("SELECT * FROM visitados WHERE acesso = '$acesso'"); //VERIFICA SE O USUÁRIO JÁ ESTÁ NO BD DE VISITADOS               
        foreach ($results as $midia) {
            $count = $midia["count"];
            $score = $midia["score"];
        }
        if ($results == NULL) {// SE NAO, INSIRA-O, SE SIM, ATUALIZE O CONTADOR                
            $query = "INSERT INTO visitados (acesso, login, indice, count, score) VALUES ('$acesso','$login','$indice','1','$duracao')";
            $this->db->insertDB($query);
        } else {
            $score = ($count * $duracao) / 2;
            $count++;
            $query = "UPDATE visitados SET count = '$count', score = '$score' WHERE acesso = '$acesso'";
            $this->db->insertDB($query);
        }
         
    }
    public function GetDB() {
        return $this->db;
    }
    

}

/* * ******************** CLASSE USUÁRIO************************* */

class Usuario {

    protected $db, $login, $senha, $email, $datanasc;

    public function __construct($login) {
        $this->db = new DBController();
        $this->login = $login;
        
    }
    public function __destruct() {
        $this->db->closeDB();
    }

    public function Acesso($senha) {
        $this->setSenha($senha);
        if ($this->login == "admin" and $this->senha == md5("admin"))
            header("Location:../IndexMASTER.php");
        else {
            $results = $this->db->selectDB("SELECT * FROM usuarios WHERE login = '$this->login'");
            foreach ($results as $senha){
                if($senha["senha"] == $this->GetSenha())
                    $passou = true;
            }
            
            if ($passou) {
                setcookie("login", $this->login);
                header("Location:../entretenimento/SiteIndex.php?login={$this->login}");
            } else
                header("Location:../index.php?err=true");
        }
    }

    public function MostraRecomendados(){
        $generoDestaque = $this->db->selectDB("SELECT genero,indice FROM midia AS m INNER JOIN visitados AS v  ON m.indice = v.indice WHERE login = '$this->login'  ORDER BY `score` DESC LIMIT 5");
        if(!empty($generoDestaque)){
            $assistidos = [];
            foreach($generoDestaque as $midia){
                $assistidos[] = $midia["indice"];
            }
            $excluir = "";
            foreach($assistidos as $item){
                $excluir = $excluir . " AND m.indice != '$item'";
            }
            $query = "";
            foreach($generoDestaque as $m_midia){
                $genero = $m_midia["genero"];
                $query = "SELECT * FROM midia as m INNER JOIN destaque as d ON m.indice = d.indice WHERE (m.genero = '$genero'";
                $query = $query . $excluir . ") ORDER BY d.score DESC LIMIT 2";
                $results = $this->db->selectDB($query);
                if(empty($results)){
                    $query = "SELECT * FROM midia " . strstr($query, "WHERE");
                    $query = strstr($query, "ORDER", true) . "LIMIT 2";
                    $results = $this->db->selectDB($query);
                }
                foreach ($results as $midia) {
                    if ($midia["tipo"] == "FILME") {
                        $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                        $video->cartaz($this->login);
                    } else {
                        $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                        $video->cartaz($this->login);
                    }
                }
            }
        }
        else
            $this->MostraDestaque();
    }

    public function MostraDestaque(){
        $results = $this->db->selectDB("SELECT * FROM midia AS m INNER JOIN destaque AS v  ON m.indice = v.indice  ORDER BY `score` DESC");
        foreach ($results as $midia) {
            if ($midia["tipo"] == "FILME") {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($_GET["login"]);
            } else {
                $video = new Serie($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($_GET["login"]);
            }
        }
    }

    public function MostraVisitados(){
        $results = $this->db->selectDB("SELECT * FROM midia AS m INNER JOIN visitados AS v  ON m.indice = v.indice  WHERE login = '$this->login' ORDER BY `login` DESC");
        foreach ($results as $midia) {
            if ($midia["tipo"] == "FILME") {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["bilheteria"]);
                $video->cartaz($this->login);
            } else {
                $video = new Filme($midia["indice"], $midia["tipo"], $midia["genero"], $midia["titulo"], $midia["diretor"], $midia["elenco"], $midia["imagem"], $midia["sinopse"], $midia["ano"], $midia["avaliacao"], $midia["duracao"], $midia["classificacao"], $midia["temporada"]);
                $video->cartaz($this->login);
            }
        }
    }

    public function setSenha($senha){
        $this->senha = md5($senha);
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function setNasc($nasc) {
        $this->datanasc = $nasc;
    }

    public function GetLogin() {
        return $this->login;
    }

    public function GetSenha() {
        return $this->senha;
    }

    public function GetEmail() {
        return $this->email;
    }

    public function GetNasc() {
        return $this->datanasc;
    }    
    

}

