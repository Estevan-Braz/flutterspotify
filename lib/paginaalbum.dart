import 'package:flutter/material.dart';
import 'package:projetospotify/paginamusica.dart';

import 'model/album.dart';

class PaginaAlbum extends StatelessWidget {
  final Album album;

  const PaginaAlbum({super.key, required this.album});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(album.titulo),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Voltar',
        child: const Icon(Icons.arrow_back),
      ),
      body: ListView.builder(
        itemCount: album.musicas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PaginaMusica(musica: album.musicas[index]),
                    ),
                  );
                },
                title: Text(
                  album.musicas[index].titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Duração: ${album.musicas[index].duracao}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
