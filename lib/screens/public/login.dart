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
              height: 44.0,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 14.0),
                onPressed: () {},
                child: Text(
                  'Entrar',
                  style: Theme.of(context).textTheme.button,
                ),
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
