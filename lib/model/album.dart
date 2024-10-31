import 'package:projetospotify/model/musica.dart';

class Album {
  final String titulo;
  final int ano;
  final List<Musica> musicas;

  Album({required this.titulo, required this.ano, required this.musicas});
}
