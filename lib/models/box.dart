import 'package:scrabble/models/chip.dart';
import 'package:scrabble/models/table.dart';
import 'package:scrabble/models/word.dart';

class Box {
  Box(this.color, this.value, this.word, this.chip);
  String color;
  int value;
  Word word;
  Chip chip;
  Table tabel = Table();

  @override
  String toString() {
    return '$color-$value';
  }

  
}
