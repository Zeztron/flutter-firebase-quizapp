import 'package:flutter/material.dart';
import 'package:flutter_firebase_quizapp/shared/bottom_nav.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Login screen')
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}