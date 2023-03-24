import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';

Widget normalButon({required String title}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amber[900],
    ),
    child: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
  );
}
