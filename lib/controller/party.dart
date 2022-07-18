import "dart:math";
import 'package:scrabble/models/bag.dart';
import 'package:scrabble/models/chip.dart';

class Party {
  List<Chevalet> chevalets = [
    Chevalet(id: 1),
    Chevalet(id: 2),
    Chevalet(id: 3),
    Chevalet(id: 4),
  ];

  List<Chip> chips = [
    Chip(letter: 'A', value: 1, number: 9),
    Chip(letter: 'B', value: 3, number: 2),
    Chip(letter: 'C', value: 3, number: 2),
    Chip(letter: 'D', value: 2, number: 3),
    Chip(letter: 'E', value: 1, number: 15),
    Chip(letter: 'F', value: 4, number: 2),
    Chip(letter: 'G', value: 2, number: 2),
    Chip(letter: 'H', value: 4, number: 2),
    Chip(letter: 'I', value: 1, number: 8),
    Chip(letter: 'J', value: 8, number: 1),
    Chip(letter: 'K', value: 10, number: 1),
    Chip(letter: 'L', value: 1, number: 2),
    Chip(letter: 'M', value: 2, number: 3),
    Chip(letter: 'N', value: 1, number: 6),
    Chip(letter: 'O', value: 1, number: 6),
    Chip(letter: 'P', value: 1, number: 2),
    Chip(letter: 'Q', value: 8, number: 1),
    Chip(letter: 'R', value: 1, number: 6),
    Chip(letter: 'S', value: 1, number: 6),
    Chip(letter: 'T', value: 1, number: 6),
    Chip(letter: 'U', value: 1, number: 6),
    Chip(letter: 'V', value: 4, number: 2),
    Chip(letter: 'W', value: 10, number: 1),
    Chip(letter: 'X', value: 10, number: 1),
    Chip(letter: 'Y', value: 10, number: 1),
    Chip(letter: 'W', value: 10, number: 1),
    Chip(letter: 'Y', value: 10, number: 1),
    Chip(letter: 'Z', value: 10, number: 1),
    Chip(letter: 'JOKER', value: 0, number: 2),
  ];

  static T getRandomElement<T>(List<T> list) {
    final random = Random();
    var i = random.nextInt(list.length);
    return list[i];
  }
}
