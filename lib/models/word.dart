import 'package:scrabble/models/player.dart';
import 'package:scrabble/models/table.dart';

class Word {
  Word(this.playedBy, this.table);
  Player playedBy;
  Table table;
  

  @override
  String toString() {
    return 'Word played by  : $playedBy';
  }

  // Word stringToWord(String str){

  // }
}
