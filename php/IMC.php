<?php
// Função para calcular o IMC
function calcular_imc($peso, $altura) {
    $imc = $peso / ($altura ** 2);
    return $imc;
}

// Função para exibir a categoria do IMC
function classificar_imc($imc) {
    if ($imc < 18.5) {
        return "Abaixo do peso";
    } elseif ($imc >= 18.5 && $imc < 24.9) {
        return "Peso normal";
    } elseif ($imc >= 25 && $imc < 29.9) {
        return "Sobrepeso";
    } elseif ($imc >= 30 && $imc < 34.9) {
        return "Obesidade grau 1";
    } elseif ($imc >= 35 && $imc < 39.9) {
        return "Obesidade grau 2";
    } else {
        return "Obesidade grau 3";
    }
}

$peso = 117;
echo "Digite o seu peso (kg): $peso\n";

$altura = 1.85;
echo "Digite a sua altura (m): $altura\n";

// Calcula o IMC
$imc = calcular_imc($peso, $altura);

// Exibe o resultado do IMC e a classificação
echo "Seu IMC é: " . round($imc, 2) . "\n";
echo "Classificação: " . classificar_imc($imc) . "\n";
?>
