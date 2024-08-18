<?php
    $servidor="localhost";
    $usuario="root";
    $senha="";
    $db="projeto";

    $conexao=mysqli_connect($servidor,$usuario,$senha$db);
    if (!$conexao) {
        die("Erro: "mysqli_error());
    }

?>