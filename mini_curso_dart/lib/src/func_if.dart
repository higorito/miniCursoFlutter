import 'dart:io';

void main() {
  stdout.write('Digite sua altura em metros: ');
  double altura = double.parse(stdin.readLineSync()!);

  stdout.write('Digite seu peso em quilogramas: ');
  double peso = double.parse(stdin.readLineSync()!);

  double imc = calcularIMC(altura, peso);

  print('Seu IMC é: $imc');
  interpretarIMC(imc);
}

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Peso normal');
  } else if (imc >= 25 && imc < 29.9) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc < 34.9) {
    print('Obesidade Grau 1');
  } else if (imc >= 35 && imc < 39.9) {
    print('Obesidade Grau 2');
  } else {
    print('Obesidade Grau 3');
  }
}
