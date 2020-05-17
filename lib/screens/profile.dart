import 'package:flutter/material.dart';
import 'package:flutter_firebase_quizapp/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Profile screen')
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}