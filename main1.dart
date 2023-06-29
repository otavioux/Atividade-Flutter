import 'package:flutter/material.dart';
import 'inicio.dart';

void main() {
  runApp(const QuestionarioApp());
}

class QuestionarioApp extends StatelessWidget {
  const QuestionarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionário',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Inicio(),
    );
  }
}

class Questionario extends StatefulWidget {
  const Questionario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  int _perguntaAtual = 0;

  final List<Map<String, Object>> _perguntas = [
    {
      'pergunta': 'Qual é a capital da França?',
      'respostas': ['Paris', 'Londres', 'Berlim', 'Roma'],
    },
    {
      'pergunta': 'Quem pintou a Mona Lisa?',
      'respostas': ['Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Michelangelo'],
    },
    {
      'pergunta': 'Quem descobriu a gravidade?',
      'respostas': ['Isaac Newton', 'Albert Einstein', 'Galileu Galilei', 'Nikola Tesla'],
    },
  ];

  void _responder() {
    setState(() {
      _perguntaAtual++;
    });

    if (_perguntaAtual >= _perguntas.length) {
      _exibirResultado();
    }
  }

  void _exibirResultado() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Parabéns!'),
          content: const Text('Você concluiu o questionário!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questionário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _perguntas[_perguntaAtual]['pergunta'].toString(),
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...(_perguntas[_perguntaAtual]['respostas'] as List<String>).map((resposta) {
              return ElevatedButton(
                onPressed: _responder,
                child: Text(resposta),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
