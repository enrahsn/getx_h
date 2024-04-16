
import 'package:flutter/material.dart';

import 'core/colors.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key,  this.icon});
final IconData? icon;
// final Color color;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),

      child: IconButton(
onPressed: () {
  
},
        icon: Icon(
          // Icons.search,
          icon!,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}