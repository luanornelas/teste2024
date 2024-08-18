<?php
    $login = $_POST['login'];
    $entrar = $_POST['entrar'];
    $senha = $_POST['senha'];
    $connect = mysqli_connect('localhost:3306','root','','sistema');

    $result = $connect->query("SELECT nome FROM usuarios where login = '$login' and senha = '$senha'");
	if($row = mysqli_num_rows($result) == true){

		if($row = mysqli_fetch_assoc($result)) {

			echo "NOME: ". $row["nome"];

			session_start();

			$_SESSION["nome"]=  $row["nome"];
		
            header("Location: index.php"); exit;

    }else {
        echo "Senha inválida.";
    }
}
    // $row = $result->fetch_row();
    // printf("Default database is %s.\n", $row[0]);

?>