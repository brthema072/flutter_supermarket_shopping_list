import 'package:flutter/cupertino.dart';
import 'package:flutter_supermarket_shopping_list/domain/item.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class GroceriesItensStore extends ChangeNotifier {
  late SharedPreferences _prefs;
  late Items items;

  GroceriesItensStore() {
    _startSettings();
  }

  _startSettings() async {
    await _startPreferences();
    await _readLocale();
  }

  Future<void> _startPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _readLocale() {
    final local = _prefs.getString("groceriesItems") ?? "";

    if (local.isEmpty) return true;

    var map = jsonDecode(local);

    print(Items.fromJson(map).items[0].name);
    print(Items.fromJson(map).items[0].isChecked);
    print(Items.fromJson(map).items[1].name);
    print(Items.fromJson(map).items[1].isChecked);

    notifyListeners();
  }

  saveItensInLocal(List<Item> listItems) async {
    items = Items(listItems);

    await _prefs.setString('groceriesItems', json.encode(items.toJson()));
    await _readLocale();
  }

  removeGroceries() {
    _prefs.remove("groceriesItems");
  }
}
