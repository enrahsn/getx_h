import 'package:Notes/models/title.dart';
import 'package:flutter/material.dart';

import 'icon.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, this.title});
final String? title;

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        MyTitle(title: 'My Notes :',),
        Spacer(),
        MyIcon( icon: Icons.search,)
      ],
    );
  }
}