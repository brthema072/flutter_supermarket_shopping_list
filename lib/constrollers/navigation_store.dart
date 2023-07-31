// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/text_store.dart';
import 'package:flutter_supermarket_shopping_list/pages/cart.dart';
import 'package:flutter_supermarket_shopping_list/pages/home.dart';

class NavigationStore {
  final TextStore textStore;

  int indexNavigation = 0;

  List<Widget> pages = [];

  NavigationStore({required this.textStore}) {
    pages = [
      HomePage(store: textStore),
      CartPage(),
    ];
  }
}
