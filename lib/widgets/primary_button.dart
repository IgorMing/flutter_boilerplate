import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const PrimaryButton(this.title, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 14.0),
      onPressed: this.onPressed,
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.button,
      ),
      color: Color.fromRGBO(48, 48, 48, 1),
    );
  }
}
