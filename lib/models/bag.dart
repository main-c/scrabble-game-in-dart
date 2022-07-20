import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/chip.dart';

class Sac {
  Sac();
  List<Jeton> jetons = [];

  Jeton prendreJeton() {
    Jeton jeton = Partie.getRandomElement(jetons);
    jetons.remove(jeton);
    return jeton;
  }
}

class Chevalet {
  Chevalet({required this.id});
  int id;
  List jetons = <Jeton>[];

  @override
  String toString() {
    String chevalet = '';
    for (var chip in jetons) {
      chevalet += '${chip.toString()}-';
    }
    return chevalet;
  }

  Chevalet seVider() {
    jetons = [];
    return this;
  }

  // remplit le chevalet
  Chevalet remplirChevalet(Sac sac) {
    while (jetons.length < 7) {
      Jeton jeton = sac.prendreJeton();
      jetons.add(jeton);
    }
    return this;
  }
}
