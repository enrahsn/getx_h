import 'package:flutter/material.dart';

import '../../models/core/app_bar.dart';
import '../../models/core/txt_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(height: 16),
                MyAppBar(
                  title: 'Edit Notes',
                  icon: Icons.check_box,
                ),
                SizedBox(height: 16),
                MyTxtField(hint: 'Title'),
                SizedBox(height: 16),
                MyTxtField(hint: 'Content', maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}

