import "dart:math";
import 'package:scrabble/models/bag.dart';
import 'package:scrabble/models/chip.dart';

List<String> motScrabble = [];

class Partie {
  int nb_player = 0;
  List<Chevalet> chevalets = [
    Chevalet(id: 1),
    Chevalet(id: 2),
    Chevalet(id: 3),
    Chevalet(id: 4),
  ];

  static List<Jeton> chips = [
    Jeton(letter: 'A', value: 1, number: 9),
    Jeton(letter: 'B', value: 3, number: 2),
    Jeton(letter: 'C', value: 3, number: 2),
    Jeton(letter: 'D', value: 2, number: 3),
    Jeton(letter: 'E', value: 1, number: 15),
    Jeton(letter: 'F', value: 4, number: 2),
    Jeton(letter: 'G', value: 2, number: 2),
    Jeton(letter: 'H', value: 4, number: 2),
    Jeton(letter: 'I', value: 1, number: 8),
    Jeton(letter: 'J', value: 8, number: 1),
    Jeton(letter: 'K', value: 10, number: 1),
    Jeton(letter: 'L', value: 1, number: 2),
    Jeton(letter: 'M', value: 2, number: 3),
    Jeton(letter: 'N', value: 1, number: 6),
    Jeton(letter: 'O', value: 1, number: 6),
    Jeton(letter: 'P', value: 1, number: 2),
    Jeton(letter: 'Q', value: 8, number: 1),
    Jeton(letter: 'R', value: 1, number: 6),
    Jeton(letter: 'S', value: 1, number: 6),
    Jeton(letter: 'T', value: 1, number: 6),
    Jeton(letter: 'U', value: 1, number: 6),
    Jeton(letter: 'V', value: 4, number: 2),
    Jeton(letter: 'W', value: 10, number: 1),
    Jeton(letter: 'X', value: 10, number: 1),
    Jeton(letter: 'Y', value: 10, number: 1),
    Jeton(letter: 'W', value: 10, number: 1),
    Jeton(letter: 'Y', value: 10, number: 1),
    Jeton(letter: 'Z', value: 10, number: 1),
    Jeton(letter: 'JOKER', value: 0, number: 2),
  ];

  static T getRandomElement<T>(List<T> list) {
    final random = Random();
    var i = random.nextInt(list.length);
    return list[i];
  }
}
