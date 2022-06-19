import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App (Updated)'), // (1)
      ),
      body: Center(
        // (6)
        child: Text(
          'テキストを変更してみました', // (3)
          style: TextStyle(
            color: Colors.purple, // (4),
            fontSize: 50, // (5)
          ),
        ),
      ),
    );
  }
}
