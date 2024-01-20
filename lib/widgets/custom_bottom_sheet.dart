import 'package:flutter/material.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/widgets/custom_add_note_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class CustomAddNoteButtomSheet extends StatelessWidget {
  const CustomAddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    String? noteTitle, noteContent;
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              noteTitle = value;
            },
            hint: 'Title',
          ),
          CustomTextField(
            onSaved: (value) {
              noteContent = value;
            },
            hint: 'Content',
            edgeInsetsGeometry:
                const EdgeInsets.only(top: 70, bottom: 70, left: 12),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomAddNoteButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            text: 'Add',
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
