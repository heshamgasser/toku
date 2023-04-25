import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Screens/Colors.dart';
import 'package:toku_app/Screens/FamilyScr.dart';
import 'package:toku_app/Screens/NumbersScr.dart';
import 'package:toku_app/Screens/Phrases.dart';
import '../components/category_items.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        automaticallyImplyLeading: false,
        titleSpacing: 20.0,
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xfff99531),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) {
                return NumbersScr();
              }));
            },
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return FamilyMembersScr();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: const Color(0xff528032),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return ColorScr();
                  },
                ),
              );
            },
            text: 'Colors',
            color: const Color(0xff7d40a2),
          ),
          // Category(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (Context) {
          //           return PhrasesScr();
          //         },
          //       ),
          //     );
          //   },
          //   text: 'Phrases',
          //   color: const Color(0xff47a5cb),
          // ),
        ],
      ),
    );
  }
}
