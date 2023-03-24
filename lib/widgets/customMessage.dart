import 'package:flutter/material.dart';

Widget customMessage({required String msg}) {
  return Container(
    margin: const EdgeInsets.only(top: 25.0, bottom: 20.0),
    child: Text(
      msg,
      maxLines: 3,
      style: const TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}
