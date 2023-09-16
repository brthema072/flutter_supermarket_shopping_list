// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/constrollers/groceries_itens_store.dart';

class CartPage extends StatelessWidget {
  final GroceriesItensStore groceriesItensStore;

  CartPage({required this.groceriesItensStore, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: groceriesItensStore.cartItems.items.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(groceriesItensStore.cartItems.items[index].name),
            ],
          );
        },
      ),
    );
  }
}
