<?php
	 $login = $_POST['login'];
	 $entrar = $_POST['entrar'];
	 $senha = $_POST['senha'];
	 $nome = $_POST['nome'];
	 $connect = mysqli_connect('localhost:3306','root','','sistema');

	$sql = $connect->query("INSERT INTO usuarios (login,senha,nome) values('$login','$senha','$nome')");

	if($sql == TRUE){

		echo "Usuário $nome cadastrado com sucesso!";
	}
// $connect->close();
	?>










 









