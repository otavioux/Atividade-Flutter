import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(16.0),
                  child: const FichaAluno(
                    image: 'lib/imagens/abc.png',
                    name: 'feio1',
                    registration: '2',
                    school: 'Escola da Vida',
                    year: '3',
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(16.0),
                  child: const FichaAluno(
                    image: 'lib/imagens/demonio.png',
                    name: 'demonio',
                    registration: '1',
                    school: 'escolaaaa',
                    year: '1',
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(16.0),
                  child: const FichaAluno(
                    image: 'lib/imagens/paxta.png',
                    name: 'Trem ruim',
                    registration: '3',
                    school: 'harvard',
                    year: '2',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FichaAluno extends StatelessWidget {
  final String image;
  final String name;
  final String registration;
  final String school;
  final String year;

  const FichaAluno({
    Key? key,
    required this.image,
    required this.name,
    required this.registration,
    required this.school,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 80.0,
          ),
          const SizedBox(height: 16.0),
          Text(
            name,
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 8.0),
          Text(
            registration,
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 8.0),
          Text(
            school,
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 8.0),
          Text(
            year,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
