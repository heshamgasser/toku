import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import '../Models/phrases_model.dart';
import 'HomeScr.dart';

// class PhrasesScr extends StatelessWidget {
//   PhrasesScr({Key? key}) : super(key: key);
//
//   List<PhraseItem> phrases = const [
//     phrases(
//       itemSound: 'dont_forget_to_subscribe.wav',
//       japWord: 'Kōdoku suru koto o wasurenaide kudasai',
//       enWord: 'dont forget to subscribe',
//     ),
//     phrases(
//       itemSound:  'i_love_programming.wav',
//       japWord: 'Watashi wa puroguramingu daisukidesu',
//       enWord: 'i love  programming',
//     ),
//     phrases(
//      itemSound: 'programming_is_easy.wav',
//       japWord: 'Puroguramingu wa kantandesu ',
//       enWord: 'programming is easy',
//     ),
//     phrases(
//       itemSound:  'where_are_you_going.wav',
//       japWord: 'Doko ni iku no',
//       enWord: 'where are you going',
//     ),
//     phrases(
//       itemSound:  'what_is_your_name.wav',
//       japWord: 'Namae wa nandesu ka',
//       enWord: 'what is your name ?',
//     ),
//     phrases(
//       itemSound:  'i_love_anime.wav',
//       japWord: 'Watashi wa anime ga daisukidesu',
//       enWord: 'i love anime',
//     ),
//     phrases(
//       itemSound:  'how_are_you_feeling.wav',
//       japWord: 'Go kibun wa ikagadesu ka',
//       enWord: 'how are you feeling?',
//     ),
//     phrases(
//       itemSound:  'are_you_coming.wav',
//       japWord: 'Kimasu ka',
//       enWord: 'are you coming?',
//     ),
//     phrases(
//       itemSound:  'yes_im_coming.wav',
//       japWord: 'Hai watashi wa kite imasu',
//       enWord: 'yes i am coming',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff49332a),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (Context) {
//                   return HomeScr();
//                 },
//               ),
//             );
//           },
//           icon: const Icon(Icons.arrow_back),
//         ),
//         title: const Text(
//           'Phrases',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 25.0,
//           ),
//         ),
//       ),
//       // body: ListView(children: getPhrases(phrases)),
//     );
//   }
//
//   List<Widget> getPhrases(List<PhraseItem> phrases) {
//     List<Widget> phrasesList = [];
//     for (int i = 0; i < phrases.length; i++) {
//       phrasesList.add(ItemsList(item: phrases[i]),);
//
//     }
//     return phrasesList;
//   }
// }
