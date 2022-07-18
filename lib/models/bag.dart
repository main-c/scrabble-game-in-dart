import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/chip.dart';

class Bag {
  Bag();
  List<Chip> chips = [];

  Chip takeChip() {
    Chip chip = Party.getRandomElement(chips);
    chips.remove(chip);
    return chip;
  }
}

class Chevalet {
  Chevalet({required this.id});
  int id;
  List chips = <Chip>[];

  @override
  String toString() {
    String chevalet = '';
    for (var chip in chips) {
      chevalet += '${chip.toString()}-';
    }
    return chevalet;
  }

  // remplit le chevalet
  Chevalet takeChips(Bag bag) {
    while (chips.length < 7) {
      Chip chip = bag.takeChip();
      chips.add(chip);
    }
    return this;
  }
}
