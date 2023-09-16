import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/domain/groceries.dart';

class TextStore {
  final TextEditingController textController = TextEditingController();
  List<Item> listItems = [];

  TextStore() {
    const String mockValues =
        "molho de tomate, azeite, papel higiênico, macarrão";
    textController.text = mockValues;
  }

  splitTextValue(String value) {
    listItems = [];
    final values = value.split(",");

    for (var value in values) {
      addtListItens(value);
    }
  }

  addtListItens(String value) {
    listItems.add(Item(value.trim(), false));
  }
}
