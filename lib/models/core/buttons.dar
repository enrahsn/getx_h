import 'package:flutter/material.dart';
import 'package:store/core/constant.dart';
import 'package:store/core/utils/size_config.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
            // fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
