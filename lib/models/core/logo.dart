import 'core/colors.dart';
import 'package:flutter/material.dart';



class MyLogo extends StatelessWidget {
  const MyLogo({super.key, required this.txt, required this.img});
final String txt;
  // final IconData img;
    final ImageProvider img;

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    // double scrWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: scrHeight * .05,
       bottom: scrHeight * .01,),
      // SizedBox(height: scrHeight * .17,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              // image: AssetImage('assets/images/buy.png'),
              image:img,height: scrHeight * 0.25,
            ),
          const Spacer(),
            // SizedBox(height: scrHeight * .02 ),
            Positioned(
              bottom: 0,
              child: Text(
              txt,
                style: TextStyle(color: kBg2Color,fontFamily: 'Pacifico', fontSize: scrHeight * .04,fontWeight: FontWeight.bold),
              ),
            ),
            // ),
          ],
        ),
    );
  }
}
