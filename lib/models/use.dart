

import 'package:flutter/material.dart';


class UseModel {
  static List<String> usageNames = [
    'Standard Map',
  ];

  /// Get item by [id].
  ///
  /// In this sample, the catalog is infinite, looping over [usageNames].
  Item getById(int id) => Item(id, usageNames[id % usageNames.length]);

  /// Get item by its position in the catalog.
  Item getByPosition(int position) {
    // In this simplified case, an item's position in the catalog
    // is also its id.
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
  // To make the sample app look nicer, each item is given one of the
  // Material Design primary colors.
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}