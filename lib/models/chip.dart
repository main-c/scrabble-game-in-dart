import 'package:scrabble/controller/party.dart';

class Jeton {
  Jeton({required this.letter, required this.value, required this.number});
  String letter;
  int value;
  int number;

  @override
  String toString() {
    return '$letter$value';
  }


}
