import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/number_model.dart';

class PhraseItem extends StatelessWidget {

  const PhraseItem(
      {Key? key,

        required this.color,
        required this.itemType, required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.japWord!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enWord!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.itemSound!);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),

    );
  }
}
