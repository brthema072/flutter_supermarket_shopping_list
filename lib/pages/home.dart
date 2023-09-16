// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/groceries_itens_store.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_checkbox_list_tile.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_textfiled.dart';

class HomePage extends StatefulWidget {
  final TextStore store;
  final GroceriesItensStore groceriesItensStore;

  HomePage({required this.store, required this.groceriesItensStore, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  updateGroceriesList(GroceriesItensStore groceriesStore) {
    setState(() {
      widget.store.splitTextValue(widget.store.textController.text);
      groceriesStore.saveItensInLocal(widget.store.listItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomTextfield(
            store: widget.store,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () => updateGroceriesList(widget.groceriesItensStore),
              child: Text('Gerar Lista'),
            ),
          ),
          CustomCheckboxListTile(
              listItems: widget.store.listItems,
              groceriesItensStore: widget.groceriesItensStore),
        ],
      ),
    );
  }
}
