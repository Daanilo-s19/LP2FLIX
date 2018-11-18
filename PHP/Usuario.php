<?php

class Usuario {
    protected $login,$senha,$nome,$datanasc;
    function __construct($login, $senha, $nome, $datanasc) {
        $this->login = $login;
        $this->senha = $senha;
        $this->nome = $nome;
        $this->datanasc = $datanasc;
         
    }
    
    public function CadastrarUsuario(){       
        
    }
    public function RetirarUsuario(){
        
    }
    public function ValidarUsuario(){
        
        
    }
    public function Assistidos(){
        
    }
    public function Sugestao(){
        
    }


    //INSERIR APENAS OS GET E SET QUE SERAO UTILIZADOS

}
?>