import 'package:flutter/material.dart';
import 'package:projetospotify/paginaalbum.dart';

import 'model/artista.dart';

class PaginaArtista extends StatelessWidget {
  final Artista artista;

  const PaginaArtista({super.key, required this.artista});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(artista.nome),
      ),
      body: ListView.builder(
        itemCount: artista.albuns.length,
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
                          PaginaAlbum(album: artista.albuns[index]),
                    ),
                  );
                },
                title: Text(
                  artista.albuns[index].titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Ano: ${artista.albuns[index].ano}')],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
