<?php
require_once 'media.php';
require_once "filme.php";
require_once "serie.php";
require_once("../BANCO/dbcontroller.php");

class GM {

    protected $db;

    public function __construct() {
        $this->db = new DBController();
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
        $this->ValidaUsuario($usuario);
    }

    private function ValidaUsuario($usuario) {
        $login = $usuario->GetLogin();
        $senha = $usuario->GetSenha();
        $email = $usuario->GetEmail();
        $datanasc = $usuario->GetNasc();
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

    public function __construct($login, $senha) {
        $this->db = new DBController();
        $this->login = $login;
        $this->senha = $senha;
    }

    public function Acesso() {
        if ($this->login == "admin" and $this->senha == "admin")
            header("Location:../IndexMASTER.php");
        else {
            $results = $this->db->selectDB("SELECT login FROM usuarios WHERE login = '$this->login'");
            if ($results != NULL) {
                setcookie("login", $this->login);
                header("Location:../entretenimento/SiteIndex.php?login={$this->login}");
            } else
                header("Location:../index.php?err=true");
        }
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
