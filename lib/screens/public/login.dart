import 'package:flutter/material.dart';

import 'package:vesti_vendas/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextInput(hintText: 'Email'),
            SizedBox(height: 13.0),
            TextInput(hintText: 'Senha'),
            SizedBox(height: 18.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                child: Text('Click me'),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
