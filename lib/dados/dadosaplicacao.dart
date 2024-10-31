import 'package:projetospotify/model/album.dart';
import 'package:projetospotify/model/artista.dart';
import 'package:projetospotify/model/musica.dart';

class MontarDados {
  Artista montar() {
    return Artista(
      nome: "Banda A",
      enderecoFoto:
          "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/10/8331bc6-2916dae0a5961a23705b3ad905e1b247189fd116-1568x931.jpg",
      albuns: [
        Album(titulo: "Primeiro Album", ano: 2010, musicas: [
          Musica(
              titulo: "Aloha",
              duracao: "01:20",
              curiosidade: "Ela toca no coração"),
          Musica(
              titulo: "Pula Boi",
              duracao: "03:22",
              curiosidade: "Ela toca no coração"),
          Musica(
              titulo: "Pula Boiada",
              duracao: "04:55",
              curiosidade: "Ela toca no coração"),
        ]),
        Album(titulo: "Segundo Album", ano: 2015, musicas: [
          Musica(
              titulo: "primeira musica",
              duracao: "01:20",
              curiosidade: "Ela toca no coração"),
          Musica(
              titulo: "segunda musica",
              duracao: "03:22",
              curiosidade: "Ela toca no coração"),
          Musica(
              titulo: "terceira musica",
              duracao: "04:55",
              curiosidade: "Ela toca no coração"),
        ])
      ],
    );
  }
}
