import 'package:flutter/material.dart';
import 'main1.dart';

 class Inicio extends StatelessWidget {
  const Inicio({super.key});

  void iniciarQuestionario(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Questionario(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Início'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bem-vindo ao Aplicativo de Questionário!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                iniciarQuestionario(context);
              },
              child: const Text('Iniciar Questionário'),
            ),
          ],
        ),
      ),
    );
  }
}