import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/number_model.dart';


class ItemsList extends StatelessWidget {
  ItemsList({required this.item});
  final Item item;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff99531),
      height: 80.0,
      child: Row(
        children: [
          Container(color: const Color(0xfffff4d9), child: Image.asset(item.image!),),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.japWord!,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  item.enWord!,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                AudioCache numPlay = AudioCache(
                  prefix: 'assets/sounds/sound_files/',
                );
                numPlay.play(item.itemSound!);
              },
              icon: const Icon(CupertinoIcons.play_arrow_solid,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
