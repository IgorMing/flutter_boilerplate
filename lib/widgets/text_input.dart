import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;

  TextInput({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: this.hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
