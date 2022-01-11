import 'dart:io';

import 'generator/pass_gen.dart';

void main(List<String> arguments) {
  stdout.writeln("\x1B[36mWelcome to the secure password generator\x1B[36m");
  stdout.writeln("\x1B[31m----------------------------------------\x1B[31m");

  sleep(Duration(seconds: 2));

  stdout.write("\x1B[33mChoose the length of your password please: \x1B[33m");
  int passLength = int.parse(stdin.readLineSync().toString().trim());

  String password = PassGenerator().passwordGenerator(passLength);

  stdout.writeln("\x1B[34mThis is your password:\x1B[34m \x1B[35m$password\x1B[35m");
}
