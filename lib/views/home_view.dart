import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCuibt(),
      child: Scaffold(
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const CustomAddNoteButtomSheet();
                });
          },
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
