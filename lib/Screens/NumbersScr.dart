import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Screens/HomeScr.dart';
import 'package:toku_app/components/item_list.dart';
import '../Models/number_model.dart';

class NumbersScr extends StatelessWidget {
  NumbersScr({Key? key}) : super(key: key);

  List<Item> number = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        enWord: 'One',
        japWord: 'Ichi',
        itemSound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        enWord: 'Two',
        japWord: 'Ni',
        itemSound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        enWord: 'Three',
        japWord: 'San',
        itemSound: 'number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        enWord: 'Four',
        japWord: 'Shi',
        itemSound: 'number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        japWord: 'Go',
        enWord: 'Five',
        itemSound: 'number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        japWord: 'Roku',
        enWord: 'Six',
        itemSound: 'number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        japWord: 'Sebun',
        enWord: 'Seven',
        itemSound: 'number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        japWord: 'Hachi',
        enWord: 'Eight',
        itemSound: 'number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        japWord: 'Kyu',
        enWord: 'Nine',
        itemSound: 'number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        japWord: 'Ju',
        enWord: 'Ten',
        itemSound: 'number_ten_sound.mp3'),
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
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView(
        children:
          getNumber(number)

      ),
    );
  }



  List<Widget> getNumber(List<Item> number){
  List<Widget> listItem = [];
  for (int i = 0; i < number.length; i++){
    listItem.add(ItemsList(item: number[i]),);
  }
  return listItem;
  }
}
