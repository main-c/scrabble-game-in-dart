import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/chip.dart';
import 'package:scrabble/models/player.dart';
import 'package:scrabble/models/table.dart';

class Mot {
  Mot({required this.str});
  String str;
  Player? playedBy;
  Table? table;

  @override
  String toString() {
    return 'Word played by  : $playedBy';
  } 

  List<Jeton> getChips() {
    List<Jeton> chips = [];
    for (var letter in str.toUpperCase().split('')) {
      print(letter);
      Jeton chip =
          Partie.chips.firstWhere((element) => element.letter == letter);
      chips.add(chip);
    }
    return chips;
  }

  bool isValid() {
    return motScrabble.contains(str);
  }
}
