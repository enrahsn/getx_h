import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/size_config.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.txt});
  final String? txt;
  @override
  Widget build(BuildContext context) {
    //  double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    // double scrWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 45,
      width: (SizeConfig.screenWidth),
      // width: scrWidth,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          txt!,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
            // fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
