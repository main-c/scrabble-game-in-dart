import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/bag.dart';
import 'package:scrabble/models/chip.dart';
import 'package:scrabble/models/word.dart';

class Player {
  Player({required this.name, required this.chevalet});
  String name;
  int score = 0;
  Chevalet chevalet;

  @override
  String toString() {
    return name;
  }

  static List orderPassing(List<Player> players) {
    List<Player> orderPassing = [];

    return orderPassing;
  }

  

  // Mot deposerMot(List <Jeton> jetonsMot ){
  //   return

  // }
}
