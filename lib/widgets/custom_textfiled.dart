// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';

class CustomTextfield extends StatelessWidget {
  final TextStore store;

  CustomTextfield({required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 236, 236, 236),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: store.textController,
                maxLines: 8, //or null
                decoration:
                    InputDecoration.collapsed(hintText: "Enter your text here"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
