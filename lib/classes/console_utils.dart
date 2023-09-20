import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDoubleComTexto(String texto) {
    print(texto);
    var value = stdin.readLineSync(encoding: utf8) ?? "";
    return double.parse(value);
  }
}
