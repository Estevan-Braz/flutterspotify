import 'package:flutter/material.dart';

import 'model/musica.dart';

class PaginaMusica extends StatelessWidget {
  final Musica musica;

  const PaginaMusica({super.key, required this.musica});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(musica.titulo),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Voltar',
        child: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Text('Duração: ${musica.duracao}'),
          Text("Curiosidade: ${musica.curiosidade}"),
        ],
      ),
    );
  }
}
