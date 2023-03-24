import 'package:flutter/material.dart';

Widget normalButon({
  required String title,
  Function()? onPressed,
  double? marginTop,
}) {
  return Container(
    margin: EdgeInsets.only(top: marginTop ?? 0),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber[900],
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
