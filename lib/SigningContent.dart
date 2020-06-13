import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String hintText;
  Field({
    this.hintText
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
