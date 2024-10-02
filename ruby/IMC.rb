# Método para calcular o IMC
def calcular_imc(peso, altura)
  imc = peso / (altura ** 2)
  return imc
end

# Método para exibir a categoria do IMC
def classificar_imc(imc)
  if imc < 18.5
    "Abaixo do peso"
  elsif imc >= 18.5 && imc < 24.9
    "Peso normal"
  elsif imc >= 25 && imc < 29.9
    "Sobrepeso"
  elsif imc >= 30 && imc < 34.9
    "Obesidade grau 1"
  elsif imc >= 35 && imc < 39.9
    "Obesidade grau 2"
  else
    "Obesidade grau 3"
  end
end

peso = 117
puts "Digite o seu peso (kg): #{peso}"

altura = 1.85
puts "Digite a sua altura (m): #{altura}"

# Calcula o IMC
imc = calcular_imc(peso, altura)

# Exibe o resultado do IMC e a classificação
puts "Seu IMC é: #{imc.round(2)}"
puts "Classificação: #{classificar_imc(imc)}"
