import 'dart:io';

void main() {
  stdout.write('Digite sua altura em metros: ');
  double altura = double.parse(stdin
      .readLineSync()!); //o ! é para dizer que o valor não é nulo pq o dart não sabe disso e dá erro
  //se nao colocar o !, tem que colocar o ? no double
  //  stdout.write('Digite sua altura em metros: ');
  // String? alturaStr = stdin.readLineSync();
  // double? altura;

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
  switch (imc) {
    case double.negativeInfinity: //isso é uma proteção contra valores inválidos
      print('IMC negativo? Verifique seus dados!');
      break;
    case double.infinity: //isso é uma proteção contra valores inválidos
      print('IMC infinito? Verifique seus dados!');
      break;
    default:
      if (imc < 18.5) {
        print('Abaixo do peso');
      } else {
        if (imc < 24.9) {
          print('Peso normal');
        } else {
          if (imc < 29.9) {
            print('Sobrepeso');
          } else {
            if (imc < 34.9) {
              print('Obesidade Grau 1');
            } else {
              if (imc < 39.9) {
                print('Obesidade Grau 2');
              } else {
                print('Obesidade Grau 3');
              }
            }
          }
        }
      }
  }
}
