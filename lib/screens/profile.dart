import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/bottom_nav.dart';
import '../services/auth.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {

    var user = Provider.of<FirebaseUser>(context);

    if (user != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(user.displayName ?? 'Guest'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: FlatButton(
            child: Text('Logout'),
            color: Colors.red,
            onPressed: () async {
              await auth.signOut();
              Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
            },
          )
        ),
        bottomNavigationBar: AppBottomNav(),
      );
    } else {
      return Text('Not logged in.');
    }
  }
}