import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

const stringKey = "stringKey";
const stringListKey = "stringListKey";

class LocalDate {
  static salvarString(String valor) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    shared.setString(stringKey, valor);
    debugPrint("$valor Salvo");
  }

  static salvarListaString(List<String> lista) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.setStringList(stringListKey, lista);
    debugPrint(lista.toString());
  }

  static Future<String> getString() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    return shared.getString(stringKey) ?? "Vazio";
  }

  static Future<List<String>> getListString() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    return shared.getStringList(stringListKey) ?? [];
  }
}
