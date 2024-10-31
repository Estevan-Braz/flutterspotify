import 'package:projetospotify/model/album.dart';

class Artista {
  final String nome;
  final String enderecoFoto;
  final List<Album> albuns;

  Artista(
      {required this.nome, required this.enderecoFoto, required this.albuns});
}
