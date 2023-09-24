import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //cria uma chave global para o formulário
  //a chave global é necessária para validar o formulário

  final TextEditingController _pesoController = TextEditingController();
  //cria um controlador para o campo de texto
  //o controlador é responsável por armazenar o valor do campo de texto
  final TextEditingController _alturaController = TextEditingController();
  late String _result;

  bool _showAlertDialog = true;

  @override
  void initState() {
    //inicializa o estado do widget
    super.initState();
    limparCampos(); //limpa os campos do formulário ao iniciar o app
  }

  void limparCampos() {
    _pesoController.text = '';
    _alturaController.text = '';
    setState(() {
      //atualiza o estado do widget
      _result = 'Informe seus dados';
    });
  }

  void _alerta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bem-vindo(a)!'),
          content: const Text(
              'Este aplicativo foi desenvolvido para o minicurso de Flutter da SETC. \n\n'
              'O IMC não é um diagnóstico médico. Para uma avaliação mais precisa, consulte um médico.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void calculateImc() {
    //calcula o IMC
    double peso = double.parse(
        _pesoController.text); //converte o valor do campo de texto para double
    double altura = double.parse(_alturaController.text) /
        100.0; // e divide por 100 para converter para metros
    double imc = peso / (altura * altura);

    setState(() {
      //atualiza o estado do widget
      _result = "IMC = ${imc.toStringAsPrecision(2)}\n"; //seta a precisão em 2
      if (imc < 18.6) {
        _result += "Abaixo do peso";
      } else if (imc < 25.0) {
        _result += "Peso ideal";
      } else if (imc < 30.0) {
        _result += "Levemente acima do peso";
      } else if (imc < 35.0) {
        _result += "Obesidade Grau I";
      } else if (imc < 40.0) {
        _result += "Obesidade Grau II";
      } else {
        _result += "Obesidade Grau IIII";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de IMC',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4A66A0),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black),
            onPressed: () {
              limparCampos();
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20.0), //espaçamento (20 pixels)
          Image.asset(
            'assets/images/balancaFeliz.png',
            fit: BoxFit.cover,
            height: 150,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: buildForm(),
          ),
        ],
      ),
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, //stretch serve para esticar o formulário
        children: <Widget>[
          buildTextFormField(
              label: "Peso (kg)",
              error: "Insira seu peso!",
              controller: _pesoController),
          buildTextFormField(
              label: "Altura (cm)",
              error: "Insira uma altura!",
              controller: _alturaController),
          const SizedBox(
            height: 12.0,
          ),
          Text(_result,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF687DAA), Color.fromARGB(255, 71, 110, 150)],
                begin: Alignment.centerRight,
                transform: GradientRotation(0.5),
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  calculateImc();
                }
                if (_showAlertDialog) {
                  _alerta();
                  _showAlertDialog = false;
                }
              },
              child: const Text(
                'CALCULAR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildTextFormField(
      {required TextEditingController controller,
      required String error,
      required String label}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
      controller: controller,
      validator: (text) {
        return text!.isEmpty ? error : null;
      },
    );
  }
}
