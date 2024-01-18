import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_note_widget.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(),
            Expanded(child: NotesListView())
          ],
        ),
        floatingActionButton: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFF7FEEE2),
          child: Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
        ));
  }
}
