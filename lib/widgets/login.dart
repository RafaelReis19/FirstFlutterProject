import 'package:aula06/widgets/login.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nomeProduto = "";
  double valorProduto = 0;
  int quantidadeProduto = 0;
  int codigoDeBarra = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        //padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Nome do produto"),
              onChanged: (text) {
                nomeProduto = text;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Valor: "),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                valorProduto = double.parse(text);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Código de Barras: "),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                codigoDeBarra = int.parse(text);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Quantidade: "),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                quantidadeProduto = int.parse(text);
              },
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Cadastrar"),
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Produto cadastrado com sucesso! \nNome: ${nomeProduto} \nCódigo: ${codigoDeBarra}",
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
