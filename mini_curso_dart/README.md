# Guia inicial de Dart

## Criando projeto

Para criar um projeto em Dart, basta executar o comando abaixo:

```bash
dart create <nome_projeto> 
```

## Executando projeto

Para executar um projeto em Dart, basta executar o comando abaixo dentro da pasta do projeto:

```bash
dart run  
```

## Tipos de variáveis

### String

```dart
String nome = "João";
```

### Int

```dart
int idade = 20;
```

### Double

```dart
double altura = 1.80;
```

### Boolean

```dart
bool isTrue = true;
```

### Dynamic

```dart
dynamic variavel = "João";
variavel = 20;
variavel = 1.80;
variavel = true;
```

### Const

```dart
const pi = 3.14;
```

### Final (variável imutável)

```dart
final pi = 3.14;  

```

### Var (variável dinâmica)

```dart
var nome = "João"; //var é dinâmico (variável mutável)
var idade = 20;
var altura = 1.80;
var isTrue = true;
```

## Operadores

### Aritméticos

```dart
int a = 10;
int b = 20;
int soma = a + b;
int subtracao = a - b;
int multiplicacao = a * b;
double divisao = a / b;
int resto = a % b;
```

### Relacionais

```dart
int a = 10;
int b = 20;
bool maior = a > b;
bool menor = a < b;
bool maiorOuIgual = a >= b;
bool menorOuIgual = a <= b;
bool igual = a == b;
bool diferente = a != b;
```

### Lógicos

```dart
bool verdadeiro = true;
bool falso = false;
bool resultado = verdadeiro && falso;
bool resultado = verdadeiro || falso;
bool resultado = !verdadeiro;
```

### Atribuição

```dart
int a = 10;
int b = 20;
int c = 30;
int d = 40;
int e = 50;
a += 10; // a = a + 10;
b -= 10; // b = b - 10;
c *= 10; // c = c * 10;
d /= 10; // d = d / 10;
e %= 10; // e = e % 10;
```

### Incremento e Decremento

```dart
int a = 10;
int b = 20;
a++; // a = a + 1;
b--; // b = b - 1;
```

## Estruturas condicionais

### If

```dart
int idade = 20;
if (idade >= 18) {
  print("Maior de idade");
}
```

### If/Else

```dart
int idade = 20;
if (idade >= 18) {
  print("Maior de idade");
} else {
  print("Menor de idade");
}
```

### If/Else If

```dart
int idade = 20;
if (idade >= 18) {
  print("Maior de idade");
} else if (idade >= 12) {
  print("Adolescente");
} else {
  print("Criança");
}
```

### Switch

```dart
int dia = 1;
switch (dia) {
  case 1:
    print("Domingo");
    break;
  case 2:
    print("Segunda");
    break;
  case 3:
    print("Terça");
    break;
  case 4:
    print("Quarta");
    break;
  case 5:
    print("Quinta");
    break;
  case 6:
    print("Sexta");
    break;
  case 7:
    print("Sábado");
    break;
  default:
    print("Dia inválido");
}
```

## Estruturas de repetição

### For

```dart
for (int i = 0; i < 10; i++) {
  print(i);
}
```

### While

```dart
int i = 0;
while (i < 10) {
  print(i);
  i++;
}
```

### Do/While

```dart
int i = 0;
do {
  print(i);
  i++;
} while (i < 10);
```

## Funções

### Função sem retorno

```dart
void soma(int a, int b) {
  print(a + b);
}
```

### Função com retorno

```dart
int soma(int a, int b) {
  return a + b;
}
```

### Função com parâmetro opcional

```dart
void soma(int a, [int b]) {
  print(a + b);
}
```

### Função com parâmetro opcional nomeado

```dart
void soma(int a, {int b}) {
  print(a + b);
}
```

### Função anônima

```dart
() {
  print("Função anônima");
}
```

### Arrow function

```dart
() => print("Arrow function");
```

## Classes

### Classe

```dart
class Pessoa {
  String nome;
  int idade;
  double altura;
  bool isMaiorDeIdade;
}
```

### Construtor

```dart
class Pessoa {
  String nome;
  int idade;
  double altura;
  bool isMaiorDeIdade;

  Pessoa(String nome, int idade, double altura, bool isMaiorDeIdade) {
    this.nome = nome;
    this.idade = idade;
    this.altura = altura;
    this.isMaiorDeIdade = isMaiorDeIdade;
  }
}
```

### Construtor com parâmetros nomeados

```dart
class Pessoa {
  String nome;
  int idade;
  double altura;
  bool isMaiorDeIdade;

  Pessoa({this.nome, this.idade, this.altura, this.isMaiorDeIdade});
}
```

### Getters e Setters

```dart
class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _isMaiorDeIdade;

  Pessoa({String nome, int idade, double altura, bool isMaiorDeIdade}) {
    this._nome = nome;
    this._idade = idade;
    this._altura = altura;
    this._isMaiorDeIdade = isMaiorDeIdade;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  int get idade => _idade;
  set idade(int idade) => _idade = idade;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  bool get isMaiorDeIdade => _isMaiorDeIdade;
  set isMaiorDeIdade(bool isMaiorDeIdade) => _isMaiorDeIdade = isMaiorDeIdade;
}
```

### Herança

```dart
class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _isMaiorDeIdade;

  Pessoa({String nome, int idade, double altura, bool isMaiorDeIdade}) {
    this._nome = nome;
    this._idade = idade;
    this._altura = altura;
    this._isMaiorDeIdade = isMaiorDeIdade;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  int get idade => _idade;
  set idade(int idade) => _idade = idade;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  bool get isMaiorDeIdade => _isMaiorDeIdade;
  set isMaiorDeIdade(bool isMaiorDeIdade) => _isMaiorDeIdade = isMaiorDeIdade;
}

class PessoaFisica extends Pessoa {
  String _cpf;

  PessoaFisica(
      {String nome, int idade, double altura, bool isMaiorDeIdade, String cpf})
      : super(
            nome: nome,
            idade: idade,
            altura: altura,
            isMaiorDeIdade: isMaiorDeIdade) {
    this._cpf = cpf;
  }

  String get cpf => _cpf;
  set cpf(String cpf) => _cpf = cpf;
}

class PessoaJuridica extends Pessoa {
  String _cnpj;

  PessoaJuridica(
      {String nome, int idade, double altura, bool isMaiorDeIdade, String cnpj})
      : super(
            nome: nome,
            idade: idade,
            altura: altura,
            isMaiorDeIdade: isMaiorDeIdade) {
    this._cnpj = cnpj;
  }

  String get cnpj => _cnpj;
  set cnpj(String cnpj) => _cnpj = cnpj;
}
```

### Métodos

```dart
class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _isMaiorDeIdade;

  Pessoa({String nome, int idade, double altura, bool isMaiorDeIdade}) {
    this._nome = nome;
    this._idade = idade;
    this._altura = altura;
    this._isMaiorDeIdade = isMaiorDeIdade;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  int get idade => _idade;
  set idade(int idade) => _idade = idade;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  bool get isMaiorDeIdade => _isMaiorDeIdade;
  set isMaiorDeIdade(bool isMaiorDeIdade) => _isMaiorDeIdade = isMaiorDeIdade;

  void dormir() {
    print("Dormir");
  }

  void comer() {
    print("Comer");
  }

  void andar() {
    print("Andar");
  }
}
```

### Classes abstratas

```dart
abstract class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _isMaiorDeIdade;

  Pessoa({String nome, int idade, double altura, bool isMaiorDeIdade}) {
    this._nome = nome;
    this._idade = idade;
    this._altura = altura;
    this._isMaiorDeIdade = isMaiorDeIdade;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  int get idade => _idade;
  set idade(int idade) => _idade = idade;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  bool get isMaiorDeIdade => _isMaiorDeIdade;
  set isMaiorDeIdade(bool isMaiorDeIdade) => _isMaiorDeIdade = isMaiorDeIdade;

  void dormir() {
    print("Dormir");
  }

  void comer() {
    print("Comer");
  }

  void andar() {
    print("Andar");
  }
}

class PessoaFisica extends Pessoa {
  String _cpf;

  PessoaFisica(
      {String nome, int idade, double altura, bool isMaiorDeIdade, String cpf})
      : super(
            nome: nome,
            idade: idade,
            altura: altura,
            isMaiorDeIdade: isMaiorDeIdade) {
    this._cpf = cpf;
  }

  String get cpf => _cpf;
  set cpf(String cpf) => _cpf = cpf;
}

class PessoaJuridica extends Pessoa {
  String _cnpj;

  PessoaJuridica(
      {String nome, int idade, double altura, bool isMaiorDeIdade, String cnpj})
      : super(
            nome: nome,
            idade: idade,
            altura: altura,
            isMaiorDeIdade: isMaiorDeIdade) {
    this._cnpj = cnpj;
  }

  String get cnpj => _cnpj;
  set cnpj(String cnpj) => _cnpj = cnpj;
}
```

### Classes estáticas

```dart
class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  bool _isMaiorDeIdade;

  Pessoa({String nome, int idade, double altura, bool isMaiorDeIdade}) {
    this._nome = nome;
    this._idade = idade;
    this._altura = altura;
    this._isMaiorDeIdade = isMaiorDeIdade;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  int get idade => _idade;
  set idade(int idade) => _idade = idade;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  bool get isMaiorDeIdade => _isMaiorDeIdade;
  set isMaiorDeIdade(bool isMaiorDeIdade) => _isMaiorDeIdade = isMaiorDeIdade;

  void dormir() {
    print("Dormir");
  }

  void comer() {
    print("Comer");
  }

  void andar() {
    print("Andar");
  }

  static void falar() {
    print("Falar");
  }
}
```

### Classes genéricas

```dart
class Pessoa<T, U> {
  T _nome;
  U _idade;

  Pessoa(this._nome, this._idade);

  T get nome => _nome;
  set nome(T nome) => _nome = nome;

  U get idade => _idade;
  set idade(U idade) => _idade = idade;
}
```

## Tratamento de erros

### Try/Catch

```dart
try {
  int.parse("João");
} catch (e) {
  print("Erro: $e");
}
```

### Try/Catch/Finally

```dart
try {
  int.parse("João");
} catch (e) {
  print("Erro: $e");
} finally {
  print("Finally");
}
```

### Try/On/Catch

```dart
try {
  int.parse("João");
} on FormatException catch (e) {
  print("Erro: $e");
}
```

### Try/On/Catch/Stacktrace

```dart
try {
  int.parse("João");
} on FormatException catch (e, s) {
  print("Erro: $e");
  print("Stacktrace: $s");
}
```

### Try/On/Catch/Finally

```dart
try {
  int.parse("João");
} on FormatException catch (e) {
  print("Erro: $e");
} finally {
  print("Finally");
}
```

### Try/On/Catch/Stacktrace/Finally

```dart
try {
  int.parse("João");
} on FormatException catch (e, s) {
  print("Erro: $e");
  print("Stacktrace: $s");
} finally {
  print("Finally");
}
```

### Try/On/Catch/Stacktrace/Finally/Rethrow

```dart
try {
  int.parse("João");
} on FormatException catch (e, s) {
  print("Erro: $e");
  print("Stacktrace: $s");
  rethrow;
} finally {
  print("Finally");
}
```

### Try/On/Catch/Stacktrace/Finally/Rethrow/Throw

```dart
try {
  int.parse("João");
} on FormatException catch (e, s) {
  print("Erro: $e");
  print("Stacktrace: $s");
  rethrow;
} catch (e) {
  print("Erro: $e");
  throw Exception("Erro ao converter idade");
} finally {
  print("Finally");
}
```

## Exceções

### Exception

```dart
throw Exception("Erro ao converter idade");
```

### FormatException

```dart
throw FormatException("Erro ao converter idade");
```

### IntegerDivisionByZeroException

```dart
throw IntegerDivisionByZeroException();
```

### IOException

```dart
throw IOException();
```

## Bibliotecas

### Import

```dart
import 'dart:io'; 
```

Desta forma, todos os recursos da biblioteca serão importados. Os principais recursos da biblioteca dart:io são: File, Directory, Platform, Process, Socket, ServerSocket, HttpClient, HttpHeaders, HttpServer, WebSocket...
Neste projeto usaremos a entrada e saída de dados para o console, portanto, importaremos apenas o recurso stdin.

```dart
stdin.readLineSync(); //Lê uma linha de texto do console
```

```dart
stdout.write("Digite seu nome: "); //Escreve uma linha de texto no console
```

### Import as

```dart
import 'dart:io' as io;
```

### Converter tipos
  
```dart
int.parse("20"); //Converte uma String para um inteiro
```

```dart
double.parse("1.80"); //Converte uma String para um double
```

```dart
int.tryParse("20"); //Tenta converter uma String para um inteiro
```

```dart
double.tryParse("1.80"); //Tenta converter uma String para um double
```

## Referências

Mais informações sobre Dart em: [dart.dev](https://dart.dev/)

Material criado por: [Higor Pereira](https://www.linkedin.com/in/higor-pereira-comp/)
