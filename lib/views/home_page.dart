import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_note_widget.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(),
            Expanded(child: NotesListView())
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet();
                });
          },
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
        ));
  }
}
