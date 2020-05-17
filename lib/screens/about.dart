import 'package:flutter/material.dart';
import '../shared/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('About screen')
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}