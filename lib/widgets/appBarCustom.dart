import 'package:flutter/material.dart';
import 'package:shopping_store/models/auth.dart';

PreferredSizeWidget appBarCustom() {
  return AppBar(
    title: const Text("Online Shopping Store"),
    actions: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {
          Auth().signOut();
        },
      )
    ],
  );
}
