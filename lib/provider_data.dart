import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class ProviderData extends ChangeNotifier {
  List<Widget> _myListTiles = [
    Container(
      color: Colors.red,
      child: ListTile(
        leading: Text('Tile 1'),
        trailing: Text('THE ONE'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: ListTile(
        leading: Text('Tile 2'),
        trailing: Text('THE TWO'),
      ),
    ),
    Container(
      color: Colors.green,
      child: ListTile(
        leading: Text('Tile 3'),
        trailing: Text('THE THREE'),
      ),
    ),
  ];

  UnmodifiableListView<Widget> get getList {
    return UnmodifiableListView(_myListTiles);
  }

  void addToList(Widget newTile) {
    _myListTiles.add(newTile);
    notifyListeners();
  }
}
