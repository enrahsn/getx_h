import 'package:flutter/material.dart';

import '../constant/colors.dart';

class MyTextButton extends StatelessWidget {
    const MyTextButton({super.key, required Null Function() onPressed, this.txt,});

  // const MyTextButton({super.key, this.text});
  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        // style: TextButton.styleFrom(
        style: TextButton.styleFrom(
          // iconColor: kPrimaryColor,
          foregroundColor: kTextColor,
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child:  Text(
          txt!,
          style: const TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
            // fontSize: 20,
            backgroundColor: kPrimaryColor,
            // decoration:BorderRadius.all(5 as Radius),
          ),
        ),
      ),
    );
  }
}
/*
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

TextButton(
  style: flatButtonStyle,
  onPressed: () { },
  child: Text('Looks like a FlatButton'),
)

*/
// /// Flutter code sample for [TextButton].

// // void main() => runApp(const TextButton());

// /*
// class TextButton extends StatelessWidget {
//   const TextButton({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('TextButton Sample')),
//         body: const TextButtonExample(),
//       ),
//     );
//   }
// }
// */
// class TextButton extends StatelessWidget {
//   const TextButton({super.key, required style});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//          /*
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: const TextStyle(fontSize: 20),
//             ),
//             onPressed: null,
//             child: const Text('Disabled'),
//           ),
//           const SizedBox(height: 30),
//           */
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: const TextStyle(fontSize: 20),
//             ),
//             onPressed: () {},
//             child: const Text('Enabled'),
//           ),
//           const SizedBox(height: 30),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Stack(
//               children: <Widget>[
//                 Positioned.fill(
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: <Color>[
//                           Color(0xFF0D47A1),
//                           Color(0xFF1976D2),
//                           Color(0xFF42A5F5),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                   style: TextButton.styleFrom(
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.all(16.0),
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {},
//                   child: const Text('Gradient'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
