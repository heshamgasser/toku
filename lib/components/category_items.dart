import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});

  String? text;
  Color? color;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20.0),
      color: color,
      width: double.infinity,
      height: 80.0,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
