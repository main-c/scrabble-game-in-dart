import 'package:scrabble/controller/party.dart';

class Chip {
  Chip({required this.letter, required this.value, required this.number});
  String letter;
  int value;
  int number;

  @override
  String toString() {
    return '$letter$value';
  }

  List<Chip> stringToChip(String str) {
    List<Chip> chips = [];
    String listStr = str.toUpperCase();
    chips = Party().chips.where((element) => listStr.contains(element.letter));
    return chips;
  }
}
