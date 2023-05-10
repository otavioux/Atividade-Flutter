import 'package:flutter/material.dart';

void main() {
  runApp(botaodoido());
}

class botaodoido extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _botaodoidoState createState() => _botaodoidoState();
}

class _botaodoidoState extends State<botaodoido> {
  List<Widget> lista = [];
  int contagem = 0;

  void incremento() {
    setState(() {
      contagem++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Criar botão'),
              onPressed: () {
                incremento();
                setState(() {
                  // Adiciona um novo botão à lista de botões
                  lista.add(ElevatedButton(
                    child: Text('Botão $contagem'),
                    onPressed: () {},
                  ));
                });
              },
            ),
            SizedBox(height: 16.0), // um espaço vazio para separar os botões
            Column(
              children: lista, // Mostra todos os botões da lista
            ),
          ],
        ),
      ),
    );
  }
}
