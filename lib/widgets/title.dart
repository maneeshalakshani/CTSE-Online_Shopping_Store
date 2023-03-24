import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';

class CustomTitle extends StatefulWidget {
  const CustomTitle({super.key, required this.title, this.marginTop});
  final String title;
  final double? marginTop;

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: widget.marginTop ?? 0),
      child: Text(
        widget.title,
        style: const TextStyle(
          color: APP_COLOR,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
