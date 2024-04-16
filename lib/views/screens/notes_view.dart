import 'package:flutter/material.dart';

import '../models/add_note.dart';
import '../widgets/notes_v_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
              context: context,
              builder: (context) {
                return const AddNote();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
      // drawer: const MyDrawer(),
    );
  }
}
