import 'package:flutter/material.dart';

import '../constant/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.txt, Function()? onPressed});
  final String? txt;
  @override
  Widget build(BuildContext context) {
     double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: scrWidth * .1),
      child: Container(
        height: scrHeight * .071,
        // width: SizeConfig.scrWidth,
        width: scrWidth * .6,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(scrWidth * .02),
        ),
        child: Center(
          child: Text(
            txt!,
            style: TextStyle(
              fontSize: scrWidth * .045,
              color: kTextColor,
              // fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
