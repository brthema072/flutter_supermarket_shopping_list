import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/domain/item.dart';

class TextStore {
  final TextEditingController textController = TextEditingController();
  final List<Item> listItems = [];

  TextStore() {
    const String mockValues =
        "molho de tomate, azeite, papel higiênico, macarrão";
    textController.text = mockValues;
  }

  splitTextValue(String value) {
    final values = value.split(",");

    for (var value in values) {
      listItems.add(Item(value.trim(), false));
    }
  }
}
