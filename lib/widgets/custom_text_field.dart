import 'package:flutter/material.dart';
import 'package:notesapp/constats/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.edgeInsetsGeometry,
  });

  final String hint;
  final EdgeInsetsGeometry? edgeInsetsGeometry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
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
        ),
      ),
    );
  }
}
