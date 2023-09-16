import 'package:flutter/cupertino.dart';
import 'package:flutter_supermarket_shopping_list/domain/groceries.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class GroceriesItensStore extends ChangeNotifier {
  late SharedPreferences _prefs;
  late Groceries groceries;
  late Groceries cartItems;

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

    groceries = Groceries.fromJson(map);

    cartItems = Groceries([]);

    print(cartItems.items);

    // print(Items.fromJson(map).items[0].name);
    // print(Items.fromJson(map).items[0].isChecked);
    // print(Items.fromJson(map).items[1].name);
    // print(Items.fromJson(map).items[1].isChecked);

    notifyListeners();
  }

  setCartValue(Item item) {
    final newItem = groceries.items
        .where((element) => element.name == item.name)
        .toList()[0];

    cartItems.items.add(newItem);
  }

  saveItensInLocal(List<Item> listItems) async {
    groceries = Groceries(listItems);

    await _prefs.setString('groceriesItems', json.encode(groceries.toJson()));
    await _readLocale();
  }

  removeGroceries() {
    _prefs.remove("groceriesItems");
  }
}
