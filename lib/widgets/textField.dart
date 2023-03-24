import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';

class textFeild extends StatefulWidget {
  const textFeild({
    super.key,
    required this.hintText,
    required this.label,
    this.errorMsg,
    required this.controller,
    required this.validator,
    this.textInputType,
  });
  final String label;
  final String hintText;
  final String? errorMsg;
  final TextEditingController controller;
  final bool validator;
  final TextInputType? textInputType;

  @override
  State<textFeild> createState() => _textFeildState();
}

class _textFeildState extends State<textFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator != true
            ? null
            : (String? value) {
                if (value == null || value.isEmpty) {
                  return widget.errorMsg;
                } else {
                  return null;
                }
              },
        keyboardType: widget.textInputType ?? TextInputType.text,
        decoration: InputDecoration(
          label: Text(widget.label),
          hintText: widget.hintText,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: APP_COLOR,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        ),
      ),
    );
  }
}
