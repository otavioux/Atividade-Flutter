import 'package:flutter/material.dart';

void main() {
  runApp(Ativ());
}

class Ativ extends StatefulWidget {
  @override
  State<Ativ> createState() => _AulaState();
}

class _AulaState extends State<Ativ> {
  var pessoa = '';
  var contagem = 0;
  var texto = '';
  final pessoas = ["Pedro", "Otávio", "João", "Rafael"];

  void click() {
    setState(() {
      if (contagem == 3) {
        contagem = 0;
      } else {
        contagem++;
      }
    });
    print(contagem);
  }

  void decisao() {
    setState(() {
      pessoa = pessoas[contagem];
      texto = '$pessoa é o mais legal';
    });
    print(texto);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Questionário sério!!"),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Quem é mais legal?'),
                Text(pessoas[contagem]),
                ElevatedButton(onPressed: click, child: Text("Clique aq")),
                ElevatedButton(
                    onPressed: decisao, child: Text("Clique para decidir")),
                SizedBox(
                  child: Text(texto),
                )
              ],
            ))));
  }
}
