import 'package:flutter/material.dart';
import 'package:notesapp/constats/const.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
