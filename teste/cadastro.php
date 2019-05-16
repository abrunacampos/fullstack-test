<?php
header("Content-type: text/html; charset=utf-8");

//parametros do banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";

// Cria a conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//Cria variáveis com os dados do cadastro
$nome=$_POST["nome"];
$nascimento=$_POST["data_nascimento"];
$email=$_POST["email"];
$telefone=$_POST["telefone"];
$regiao=$_POST["regiao"];
$unidade=$_POST["unidade"];
$pontuacao =$_POST["pontuacao"];

//Calcula a pontuação de acordo com a região
if ($regiao== "Sul"){
   $nPontuacao = $pontuacao - 2;
   $pontuacao = $nPontuacao;
} else if($regiao=="Centro-Oeste"){
    $nPontuacao = $pontuacao - 3;
    $pontuacao = $nPontuacao;
}else if($regiao=="Nordeste"){
    $nPontuacao = $pontuacao - 4;
    $pontuacao = $nPontuacao;
}else if($regiao=="Norte"){
    $nPontuacao = $pontuacao - 5;
    $pontuacao = $nPontuacao;
}else if($regiao=="Sudeste"){
    if ($unidade=="São Paulo"){
        //
    }else{
        $nPontuacao = $pontuacao - 1;
        $pontuacao = $nPontuacao;
    }
}
// Calcula a idade
$bday= new DateTime($nascimento);
$today= new dateTime ('2019-11-01');
$diff = $today->diff($bday);
$age = $diff->y;

//Calcula pontuação de acordo com a idade
if ($age>=100 || $age<18){
    $nPontuacao= $pontuacao -5;
    $pontuacao=$nPontuacao;
}else if ($age>=40 && $age<100){
    $nPontuacao= $pontuacao -3;
    $pontuacao=$nPontuacao;
}

//Insere no banco de dados o novo usuário
$sql = "INSERT INTO usuario (nome, dataNascimento, email,telefone,regiao,unidade,pontuacao)
VALUES ('$nome','$nascimento','$email','$telefone','$regiao','$unidade','$pontuacao')";

if (mysqli_query($conn, $sql)) {
    echo "Novo registro criado com sucesso!";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

//Enviar para API
$url = 'http://api.actualsales.com.br/join-asbr/ti/lead';
//Dados para enviar
$str = array(
    "nome"=> $nome,
    "email"=> $email,
    "telefone"=> $telefone,
    "regiao"=> $regiao,
    "unidade"=>$unidade,
    "data_nascimento"=> $nascimento,
    "score"=> $pontuacao,
    "token"=> "effeb58d5421c980bc4d2ecfea42b1d7"
);
//Converto os dados para enviar
$data = http_build_query($str);
//Inicia a Curl
$sc = curl_init();

//Configuração da Curl
curl_setopt($sc, CURLOPT_URL, $url);
curl_setopt($sc, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($sc, CURLOPT_POST, 1);
curl_setopt($sc, CURLOPT_POSTFIELDS, $data);


$output = curl_exec($sc);
if ($output === FALSE){
    echo "curl error: ".curl_error($sc);
}
curl_close($sc);
var_dump($output);

?>
