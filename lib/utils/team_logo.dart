import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class TeamsLogo {
  late List data;
  static final TeamsLogo _singleton = TeamsLogo._internal();

  factory TeamsLogo() {
    return _singleton;
  }

  TeamsLogo._internal();

  Future init() async {
    var jsonText = await rootBundle.loadString('assets/json/teams.json');
    data = json.decode(jsonText);
  }

  String getLogo(String team) {
    var result = "";
    team = team.toLowerCase();
    for (var char in team.runes) {
      final originalChar = String.fromCharCode(char);
      final englishChar = turkishToEnglishMap[originalChar];
      result += englishChar ?? originalChar;
    }
    var findItems = data.where((element) => element["team"]
        .toString()
        .toLowerCase()
        .contains(result.toLowerCase()));

    if (findItems.isNotEmpty) {
      return "https://sportteamslogo.com/api?key=73c138047bef46fab5ec2f4acf9dfa11&size=medium&tid=${findItems.first["id"]}";
    }
    return "https://upload.wikimedia.org/wikipedia/tr/thumb/8/86/Fenerbahçe_SK.png/200px-Fenerbahçe_SK.png";
  }

  final Map<String, String> turkishToEnglishMap = {
    'ç': 'c',
    'ğ': 'g',
    'ı': 'i',
    'i': 'i',
    'ö': 'o',
    'ş': 's',
    'ü': 'u',
    'Ç': 'C',
    'Ğ': 'G',
    'İ': 'I',
    'I': 'I',
    'Ö': 'O',
    'Ş': 'S',
    'Ü': 'U',
  };
}
