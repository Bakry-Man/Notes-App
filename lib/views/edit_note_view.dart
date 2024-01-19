import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_add_note_button.dart';
import 'package:notesapp/widgets/custom_app_bar_for_Edit_view.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBarForEditView(),
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title'),
          CustomTextField(
            hint: 'Content',
            edgeInsetsGeometry: EdgeInsets.only(top: 70, bottom: 70, left: 12),
          ),
          Spacer(),
          CustomAddNoteButton(
            text: 'Save',
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
