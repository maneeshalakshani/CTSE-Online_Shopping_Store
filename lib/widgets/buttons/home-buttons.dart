import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';

class HomeButton extends StatefulWidget {
  HomeButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.imageUrl})
      : super(key: key);

  String title;
  void Function()? onPressed;
  final String imageUrl;

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
          //padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(widget.imageUrl), fit: BoxFit.cover)),
            ),
            Text(
              widget.title,
              style: const TextStyle(
                color: TEXT_WHITE,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
