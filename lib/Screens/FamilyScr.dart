import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/number_model.dart';
import 'package:toku_app/components/item_list.dart';

import 'HomeScr.dart';

class FamilyMembersScr extends StatelessWidget {
  FamilyMembersScr({Key? key}) : super(key: key);

  List<Item> familyMembers = const [
    Item(
      itemSound: 'father.wav',
      japWord: 'Chichioya',
      enWord: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      itemSound: 'daughter.wav',
      japWord: 'Musume',
      enWord: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      itemSound: 'grand father.wav',
      japWord: 'Ojīsan',
      enWord: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      itemSound: 'mother.wav',
      japWord: 'Hahaoya',
      enWord: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      itemSound: 'grand mother.wav',
      japWord: 'Sobo',
      enWord: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      itemSound: 'older bother.wav',
      japWord: 'Nīsan',
      enWord: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      itemSound: 'older sister.wav',
      japWord: 'Ane',
      enWord: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      itemSound: 'son.wav',
      japWord: 'Musuko',
      enWord: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      itemSound: 'younger brohter.wav',
      japWord: 'otōto',
      enWord: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      itemSound: 'younger sister.wav',
      japWord: 'Imōto',
      enWord: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView(
        children: getFamily(familyMembers),
      ),
    );
  }

  List<Widget> getFamily(List<Item> familyMembers) {
    List<Widget> familyList = [];
    for (int i = 0; i < familyMembers.length; i++) {
      familyList.add(
        ItemsList(item: familyMembers[i]),
      );
    }
    return familyList;
  }
}
