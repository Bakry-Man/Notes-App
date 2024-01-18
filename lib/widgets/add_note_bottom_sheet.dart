import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                const EdgeInsets.only(top: 100, bottom: 100, left: 12),
          )
        ],
      ),
    );
  }
}
