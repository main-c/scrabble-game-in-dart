import 'dart:convert';
import 'dart:io';
import "dart:math";

import 'package:scrabble/controller/party.dart';
import 'package:scrabble/models/bag.dart';
import 'package:scrabble/models/player.dart';
import 'package:scrabble/scrabble.dart' as scrabble;

void main(List<String> arguments) {
  // initialisation
  Party currentParty = Party();
  List<Player> players = [];
  List<Chevalet> chevalets = currentParty.chevalets;
  Bag bag = Bag();
  bag.chips = currentParty.chips;

  print("Enter number of player : ");
  int? nb_player = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= nb_player; i++) {
    print("Enter player $i name : ");
    String? name = stdin.readLineSync(encoding: utf8);
    players.add(Player(name: name ?? 'Player$i', chevalet: chevalets[i - 1]));
  }

  // random the position of players to get the passing order
  List<Player> orderPassing = [];
  for (var i = 0; i < players.length; i++) {
    Player player = Party.getRandomElement(players);
    orderPassing.add(player);
    players.remove(player);
  }
  players = orderPassing;

  // le chevalet des joueurs est initialisé avant le debut du jeu
  for (var i = 0; i < players.length; i++) {
    players[i].chevalet = players[i].chevalet.takeChips(bag);
    print("Player ${i + 1} : ${players[i]}\n");
  }

  print("\n\n**********************Starting**********************");
  bool isEnd = true;
  int round = 0;
  while (isEnd) {
    for (var player in players) {
      bool isCorrect = false;
      print('it is $player turn\nChevalet:${player.chevalet}');
      print('Enter a values or keep empty the fill to pass your turn');
      String? res = stdin.readLineSync();
      while (isCorrect == false) {
        print('Enter a values or keep empty the field to pass your turn');
        String? res = stdin.readLineSync();
        res = res ?? '';
        if (res.isEmpty) {
          break;
        }
        print(res);
      }
      
    }
  }

  // First tour
}
