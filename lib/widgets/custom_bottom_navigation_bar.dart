// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/route_store.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var routeStore = RouteStore();

  void _cartNavigation() {
    Navigator.pushNamed(context, '/cart');
  }

  void _homeNavigation() {
    Navigator.pushNamed(context, '/home');
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _homeNavigation();
      }

      if (index == 1) {
        _cartNavigation();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: routeStore.defineIndexByPath(context),
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
