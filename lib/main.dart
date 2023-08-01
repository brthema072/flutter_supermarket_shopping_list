// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/navigation_store.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var navigationStore = NavigationStore(textStore: TextStore());

  void _onItemTapped(int index) {
    setState(() {
      navigationStore.indexNavigation = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo Home Page"),
        ),
        body: SingleChildScrollView(
          child:
              navigationStore.pages.elementAt(navigationStore.indexNavigation),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Montar Lista",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Carrinho",
            ),
          ],
          currentIndex: navigationStore.indexNavigation,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
