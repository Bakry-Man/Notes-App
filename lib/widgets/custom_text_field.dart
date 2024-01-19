import 'package:flutter/material.dart';
import 'package:notesapp/constats/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.edgeInsetsGeometry,
    this.onSaved,
  });

  final String hint;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'the field is required';
          } else {
            return null;
          }
        },
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: hint,
            contentPadding: edgeInsetsGeometry,
            hintStyle: const TextStyle(color: kPrimaryColor),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(8)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
