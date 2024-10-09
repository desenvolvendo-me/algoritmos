public class IMC {

    // Método para calcular o IMC
    public static double calcularImc(double peso, double altura) {
        return peso / (altura * altura);
    }

    // Método para exibir a categoria do IMC
    public static String classificarImc(double imc) {
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

    public static void main(String[] args) {
        double peso = 117;
        System.out.println("Digite o seu peso (kg): " + peso);

        double altura = 1.85;
        System.out.println("Digite a sua altura (m): " + altura);

        // Calcula o IMC
        double imc = calcularImc(peso, altura);

        // Exibe o resultado do IMC e a classificação
        System.out.println("Seu IMC é: " + String.format("%.2f", imc));
        System.out.println("Classificação: " + classificarImc(imc));
    }
}
