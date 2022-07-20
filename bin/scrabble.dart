import 'dart:convert';
import 'dart:io';
import "dart:math";

import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/bag.dart';
import 'package:scrabble/models/chip.dart';
import 'package:scrabble/models/player.dart';
import 'package:scrabble/models/word.dart';
import 'package:scrabble/scrabble.dart' as scrabble;

void main(List<String> arguments) {
  // initialisation
  Partie currentParty = Partie();
  List<Player> players = [];
  List<Chevalet> chevalets = currentParty.chevalets;
  Sac bag = Sac();
  bag.jetons = Partie.chips;

  print("Enter number of player : ");
  int? nb_player = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= nb_player; i++) {
    print("Enter player $i name : ");
    String? name = stdin.readLineSync(encoding: utf8);
    players.add(Player(name: name ?? 'Player$i', chevalet: chevalets[i - 1]));
  }

  // on termine et on affiche l'ordre de passage des joueurs et on initie le chevalet de chaque joueur
  print(players);
  for (var i = 0; i < players.length; i++) {
    Player player = Partie.getRandomElement(players);
    player.chevalet = player.chevalet.remplirChevalet(bag);
    players.add(player);
    players.remove(player);
  }

// Affichage de tous les joeurs et leur ordre de passage"

  players.forEach((player) => print("- $player"));

  print("\n\n**********************Debut du jeu**********************");
  bool isEnd = true;
  int round = 0;
  List currentChips = <Jeton>[];
  Mot currentWord = Mot(str: '');
  while (isEnd) {
    for (var player in players) {
      bool isCorrect = false;
      print('A  $player de jouer!\nChevalet:${player.chevalet}');
      print('Enter a values or keep empty the fill to pass your turn');
      String? res = stdin.readLineSync();
      res = res ?? '';
      if (res.isEmpty) {
        print("$player a passé son tour");
        continue;
      }
      currentWord = Mot(str: res);
      if (currentWord.isValid()) {
        currentChips = currentWord.getChips();
      } else {
        print("Ce mot ne correspond pas a un mot scrabble ! !\n");
        print("***Votre tour est terminé***");
        print("Score: ${player.score}");
      }
    }
  }

  // First tour
}
