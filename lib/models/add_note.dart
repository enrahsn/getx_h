import 'package:flutter/material.dart';
// import 'buttony.dart';
import 'buttony.dart';
import 'txt_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            // Spacer(),
            MyTxtField(hint: 'Title :', maxLines: 1 ),
            SizedBox(height: 8),
            // Spacer(),
            MyTxtField(hint: 'Details :', maxLines: 4),
            SizedBox(height: 8),
            // Spacer(),
            MyButton(txt:'Add'),
            SizedBox(height: 16),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}