import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_app_bar_for_Edit_view.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

String id = 'EditNoteView';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBarForEditView(),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title'),
          CustomTextField(
            hint: 'Content',
            edgeInsetsGeometry:
                const EdgeInsets.only(top: 70, bottom: 70, left: 12),
          )
        ],
      ),
    );
  }
}
