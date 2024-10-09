# Função para calcular o IMC
def calcular_imc(peso, altura):
    imc = peso / (altura ** 2)
    return imc

# Função para exibir a categoria do IMC
def classificar_imc(imc):
    if imc < 18.5:
        return "Abaixo do peso"
    elif imc >= 18.5 and imc < 24.9:
        return "Peso normal"
    elif imc >= 25 and imc < 29.9:
        return "Sobrepeso"
    elif imc >= 30 and imc < 34.9:
        return "Obesidade grau 1"
    elif imc >= 35 and imc < 39.9:
        return "Obesidade grau 2"
    else:
        return "Obesidade grau 3"

peso = 117
print(f"Digite o seu peso (kg): {peso}")

altura = 1.85
print(f"Digite a sua altura (m): {altura}")

# Calcula o IMC
imc = calcular_imc(peso, altura)

# Exibe o resultado do IMC e a classificação
print(f"Seu IMC é: {round(imc, 2)}")
print(f"Classificação: {classificar_imc(imc)}")
