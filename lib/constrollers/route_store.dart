// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/pages/cart.dart';
import 'package:flutter_supermarket_shopping_list/pages/home.dart';

class RouteStore {
  Map<String, WidgetBuilder> routers = {
    "/home": (context) => HomePage(),
    "/cart": (context) => CartPage(),
  };

  int defineIndexByPath(BuildContext context) {
    switch (ModalRoute.of(context)?.settings.name) {
      case "/home":
        return 0;
      case "/cart":
        return 1;
      default:
        return 0;
    }
  }
}
