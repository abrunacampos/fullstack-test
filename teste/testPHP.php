<?php
//
//$cURL = curl_init('http://api.actualsales.com.br/join-asbr/ti/lead');
//curl_setopt($cURL, CURLOPT_RETURNTRANSFER, true);
//
//Sdados = '{' .
//    '"nome": "teste te",'.
//    '"email": "teste@teste.com",'.
//    '"telefone": "123",'.
//    '"regiao": "Sul",'.
//    '"unidade":"Curitiba",'.
//    '"data_nascimento": "2010-10-10",'.
//    '"score": "8",'.
//    '"token": "effeb58d5421c980bc4d2ecfea42b1d7"'.
//    '}';
//
//curl_setopt($cURL, CURLOPT_POST, true);
//curl_setopt($cURL, CURLOPT_POSTFIELDS, $dados);
//
//$resultado = curl_exec($cURL);
//curl_close($cURL);
//
//echo ($resultado);

$url = 'http://api.actualsales.com.br/join-asbr/ti/lead';
$str = array(
    "nome"=> "teste te",
    "email"=> "teste@teste.com",
    "telefone"=> "9980813234",
    "regiao"=> "Sul",
    "unidade"=>"Curitiba",
    "data_nascimento"=> "2010-10-10",
    "score"=> "8",
    "token"=> "effeb58d5421c980bc4d2ecfea42b1d7"
    );
$data = http_build_query($str);

$sc = curl_init();

curl_setopt($sc, CURLOPT_URL, $url);
curl_setopt($sc, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($sc, CURLOPT_POST, 1);
curl_setopt($sc, CURLOPT_POSTFIELDS, $data);

$output = curl_exec($sc);
if ($output === FALSE){
    echo "curl error: ".curl_error($sc);
}
curl_close($sc);
print_r($output);





?>