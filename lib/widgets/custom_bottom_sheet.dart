import 'package:flutter/material.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/widgets/custom_add_note_button_sheet.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class CustomAddNoteButtomSheet extends StatelessWidget {
  const CustomAddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            CustomTextField(
              hint: 'Content',
              edgeInsetsGeometry:
                  const EdgeInsets.only(top: 70, bottom: 70, left: 12),
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomAddButton(
              text: 'Add',
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
