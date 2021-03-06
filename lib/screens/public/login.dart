import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_boilerplate/stores/authentication.dart';

import 'package:flutter_boilerplate/widgets/primary_button.dart';
import 'package:flutter_boilerplate/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthenticationStore>(context);
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
              child: PrimaryButton(
                'Entrar',
                onPressed: () => authStore.signin(context),
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Esqueceu sua senha?',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
