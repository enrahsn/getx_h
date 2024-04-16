import 'package:flutter/material.dart';
import 'core/colors.dart';


class MyTitle extends StatelessWidget {
  const MyTitle({super.key, this.title});
final String? title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title!, style:  const TextStyle(color: kPrimaryColor,fontSize: 18),),
      ],
    );
  }
}