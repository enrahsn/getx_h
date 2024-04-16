import 'package:flutter/material.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/create_note');
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }),);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'build your career with tharwat samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              // trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size:30,),),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'May 21, 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 16),
              ),
            )
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
