import 'package:FoodUI/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FoodEmojiStoreApp());
}

class FoodEmojiStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, buttonColor: Colors.green),
      home: HomePage(),
    );
  }
}
