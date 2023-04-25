import 'package:flutter/material.dart';
import 'package:toku_app/Screens/HomeScr.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScr(),
    );
  }
}
