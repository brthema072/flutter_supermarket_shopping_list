class Items {
  List<Item> items;

  Items(this.items);

  factory Items.fromJson(Map<String, dynamic> json) {
    List<Item> items = [];

    json["items"].forEach((item) {
      items.add(Item.fromJson(item));
    });

    return Items(items);
  }

  Map<String, dynamic> toJson() => {"items": items};
}

class Item {
  String name;
  bool isChecked;

  Item(this.name, this.isChecked);

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(json["name"], json["isChecked"]);
  }

  Map<String, dynamic> toJson() => {"name": name, "isChecked": isChecked};
}
