import 'package:flutter/material.dart';

import '../core/colors.dart';
import 'icon.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    Text(title, style:  const TextStyle(color: kPrimaryColor,fontSize: 18),),

        // MyTitle(title: 'My Notes :',),
        const Spacer(),
        MyIcon( icon: icon,)
      ],
    );
  }
}