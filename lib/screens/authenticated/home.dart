import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vesti_vendas/routes.dart';

import 'package:vesti_vendas/stores/authentication.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthenticationStore>(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            onPressed: () => authStore.signout(context),
            child: Text(
              'Logout',
              style: Theme.of(context).textTheme.button,
            ),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Home screen'),
        ),
      ),
    );
  }
}
