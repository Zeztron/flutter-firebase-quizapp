import 'package:flutter/material.dart';
import '../shared/shared.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics'),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}