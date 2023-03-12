import 'package:flutter/material.dart';

PreferredSizeWidget appBarCustom(){
  return AppBar(
    backwardsCompatibility: false,
    title: const Text("Online Shopping Store"),
    actions: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: (){

        },
      ),
      IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: (){

        },
      )
    ],
  );
}