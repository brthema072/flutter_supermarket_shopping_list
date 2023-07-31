// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_checkbox_list_tile.dart';
import 'package:flutter_supermarket_shopping_list/widgets/custom_textfiled.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var store = TextStore();

  test() {
    setState(() {
      store.splitTextValue(store.textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomTextfield(
                store: store,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () => test(),
                  child: Text('Confirmar'),
                ),
              ),
              CustomCheckboxListTile(listItems: store.listItems),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
