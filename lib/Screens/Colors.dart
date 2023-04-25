import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/number_model.dart';
import 'package:toku_app/components/item_list.dart';

import 'HomeScr.dart';

class ColorScr extends StatelessWidget {
   ColorScr({Key? key}) : super(key: key);

  List<Item> color = const [
    Item(
      itemSound: 'black.wav',
      japWord: 'Burakku',
      enWord: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      itemSound: 'brown.wav',
      japWord: 'Chairo',
      enWord: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      itemSound: 'dusty yellow.wav',
      japWord: 'Hokori ppoi kiiro',
      enWord: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      itemSound: 'gray.wav',
      japWord: 'Gurē',
      enWord: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      itemSound: 'green.wav',
      japWord: 'Midori',
      enWord: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      itemSound: 'red.wav',
      japWord: 'Aka',
      enWord: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (Context) {
                  return HomeScr();
                },
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView(
        children: getColor(color)
      ),
    );
  }
  
  
  List<Widget> getColor(List<Item> color){
    List<Widget> getColor = [];
    for (int i = 0; i < color.length; i++){
      getColor.add(ItemsList(item: color[i]));
    }
    return getColor;
  }
}
