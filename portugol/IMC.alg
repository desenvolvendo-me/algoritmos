algoritmo "IMC"
var
    peso, altura, imc: real

// Função que calcula
funcao calculo(peso, altura: real): real
var 
    resultado: real
inicio
    resultado <- peso / (altura * altura)
    retorne resultado
fimfuncao

funcao classificar(imc: real): caractere
inicio
    se imc < 18.5 entao
        retorne "Abaixo do peso"
    senao
        se imc >= 18.5 e imc < 24.9 entao
            retorne "Peso normal"
        senao
            se imc >= 25 e imc < 29.9 entao
                retorne "Sobrepeso"
            senao
                se imc >= 30 e imc < 34.9 entao
                    retorne "Obesidade grau 1"
                senao
                    se imc >= 35 e imc < 39.9 entao
                        retorne "Obesidade grau 2"
                    senao
                        retorne "Obesidade grau 3"
                    fimse
                fimse
            fimse
        fimse
    fimse
fimfuncao

inicio
    // Entrada de dados
    escreval("Digite o seu peso (kg): ")
    leia(peso)
    escreval("Digite a sua altura (m): ")
    leia(altura)

    // Cálculo do IMC
    imc <- calculo(peso, altura)

    // Saída do IMC e da classificação
    escreval("Seu IMC é: ", imc:2)
    escreval("Classificação: ", classificar(imc))
fimalgoritmo
