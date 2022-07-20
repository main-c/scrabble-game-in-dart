import 'package:scrabble/models/chip.dart';
import 'package:scrabble/models/table.dart';
import 'package:scrabble/models/word.dart';

class Case {
  Case({required this.asisX, required this.ordY, required this.color});
  int asisX;
  int ordY;
  String color;
  Mot? mot;
  Jeton? jeton;
  bool estLibre = true;

  @override
  String toString() {
    return '$color';
  }
}
