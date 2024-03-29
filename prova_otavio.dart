import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Generation {
  final String title;
  final List<String> pokemons;

  Generation({
    required this.title,
    required this.pokemons,
  });
}

List<Generation> generations = [
  Generation(
    title: 'Generation I',
    pokemons: [
      'assets/images/bulbasaur.png',
      'assets/images/charmander.png',
      'assets/images/squirtle.png'
    ],
  ),
  Generation(
    title: 'Generation II',
    pokemons: [
      'assets/images/chikorita.png',
      'assets/images/cyndaquil.png',
      'assets/images/totodile.png'
    ],
  ),
  Generation(
    title: 'Generation III',
    pokemons: [
      'assets/images/treecko.png',
      'assets/images/torchic.png',
      'assets/images/mudkip.png'
    ],
  ),
  Generation(
    title: 'Generation IV',
    pokemons: [
      'assets/images/turtwig.png',
      'assets/images/chimchar.png',
      'assets/images/piplup.png'
    ],
  ),
  Generation(
    title: 'Generation V',
    pokemons: [
      'assets/images/snivy.png',
      'assets/images/tepig.png',
      'assets/images/oshawott.png'
    ],
  ),
  Generation(
    title: 'Generation VI',
    pokemons: [
      'assets/images/chespin.png',
      'assets/images/fennekin.png',
      'assets/images/froakie.png'
    ],
  ),
  Generation(
    title: 'Generation VII',
    pokemons: [
      'assets/images/rowlet.png',
      'assets/images/litten.png',
      'assets/images/popplio.png'
    ],
  ),
  Generation(
    title: 'Generation VIII',
    pokemons: [
      'assets/images/grookey.png',
      'assets/images/scorbunny.png',
      'assets/images/sobble.png'
    ],
  ),
];


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon Generations',
      home: GenerationsScreen(),
    );
  }
}

class GenerationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokémons'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (context, index) {
          final generation = generations[index];
          return ExpansionTile(
            title: Text(generation.title),
            children: generation.pokemons.map((pokemon) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(pokemon),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}