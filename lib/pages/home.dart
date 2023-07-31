// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_checkbox_list_tile.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_textfiled.dart';

class HomePage extends StatefulWidget {
  final TextStore store;
  HomePage({required this.store, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  test() {
    setState(() {
      widget.store.splitTextValue(widget.store.textController.text);
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
              onPressed: () => test(),
              child: Text('Confirmar'),
            ),
          ),
          CustomCheckboxListTile(listItems: widget.store.listItems),
        ],
      ),
    );
  }
}
