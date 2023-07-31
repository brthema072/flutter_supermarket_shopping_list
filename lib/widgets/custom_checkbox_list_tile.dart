// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_supermarket_shopping_list/domain/item.dart';

class CustomCheckboxListTile extends StatefulWidget {
  List<Item> listItems;

  CustomCheckboxListTile({required this.listItems, super.key});

  @override
  State<CustomCheckboxListTile> createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.listItems
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: CheckboxListTile(
                value: item.isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    item.isChecked = value!;
                  });
                },
                title: Text(item.name.toString()),
                subtitle: Text('Supporting text'),
              ),
            ),
          )
          .toList(),
    );
  }
}
