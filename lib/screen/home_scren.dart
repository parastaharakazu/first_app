import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // (12) StatefulWidgetに変更
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController inputTextController =
      TextEditingController(); // (12) 入力データを保持するコントローラーを定義
  String textData = 'ここに入力したテキストが入ります'; // (13)

  // (14) textData変数を更新するための関数を定義
  void _updateTextData() {
    setState(() {
      textData = inputTextController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App (Updated)'), // (1)
        leading: Icon(Icons.edit), // (15)
      ),
      body: Container(
        // (10)
        width: double.infinity, // (10)
        decoration: BoxDecoration(color: Colors.yellow), // (17)
        child: Column(
          // (9)
          children: [
            SizedBox(
              height: 20,
            ), // (11)
            Text(textData), // (13)
            SizedBox(height: 30),
            Text(
              'テキストを変更してみました', // (3)
              style: TextStyle(
                color: Colors.purple, // (4),
                fontSize: 20, // (5)
                fontFamily: 'HachiMaruPop', // (8)
              ),
            ),
            TextField(
              controller: inputTextController,
              style: TextStyle(fontSize: 30), // (16)
              decoration: InputDecoration(hintText: '文字列を入力してください'), // (16)
            ), // (12)
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // (14)
                _updateTextData();
              },
              child: Text('ボタン'), // (9)
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              child: Image.asset('assets/images/flutter-logo.png'),
            ), // (18)
          ],
        ),
      ),
    );
  }
}
