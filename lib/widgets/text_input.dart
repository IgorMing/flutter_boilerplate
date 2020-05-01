import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;

  TextInput({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 42.0,
      child: TextField(
        decoration: InputDecoration(
          hintText: this.hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(2.0),
            ),
          ),
        ),
      ),
    );
  }
}
