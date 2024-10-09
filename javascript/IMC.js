// Função para calcular o IMC
function calcularImc(peso, altura) {
    let imc = peso / (altura ** 2);
    return imc;
}

// Função para exibir a categoria do IMC
function classificarImc(imc) {
    if (imc < 18.5) {
        return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 24.9) {
        return "Peso normal";
    } else if (imc >= 25 && imc < 29.9) {
        return "Sobrepeso";
    } else if (imc >= 30 && imc < 34.9) {
        return "Obesidade grau 1";
    } else if (imc >= 35 && imc < 39.9) {
        return "Obesidade grau 2";
    } else {
        return "Obesidade grau 3";
    }
}

let peso = 117;
console.log(`Digite o seu peso (kg): ${peso}`);

let altura = 1.85;
console.log(`Digite a sua altura (m): ${altura}`);

// Calcula o IMC
let imc = calcularImc(peso, altura);

// Exibe o resultado do IMC e a classificação
console.log(`Seu IMC é: ${imc.toFixed(2)}`);
console.log(`Classificação: ${classificarImc(imc)}`);
