import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';

class HomeButton extends StatefulWidget {
  HomeButton({
    Key? key,
    required this.title,
    required this.onPressed
  }) : super(key: key);

  String title;
  void Function()? onPressed;

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ELEVATED_BUTTON_HOME_COLOUR,
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        child: Text(
          widget.title,
          style: const TextStyle(
            color: TEXT_WHITE,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
