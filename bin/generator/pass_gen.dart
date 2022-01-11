import 'dart:math';

import '../chars/chars.dart';

class PassGenerator {

  String passwordGenerator(int passLength) {
    final Random _random = Random();

    List<String> password = List.empty(growable: true);

    for(int i = 0; i < passLength; i++){
      int charOpt = _random.nextInt(4);

      switch (charOpt) {
        case 1:
          String char = Chars.chars[_random.nextInt(Chars.chars.length)];
          password.add(char);
          continue;
        case 2:
          String char =
            Chars.capitalChars[_random.nextInt(Chars.capitalChars.length)];
          password.add(char);
          continue;
        case 3:
          String char =
            Chars.symbolChars[_random.nextInt(Chars.symbolChars.length)];
          password.add(char);
          continue;
        default:
          continue;
      }
    }

    return password.join('');
  }
}