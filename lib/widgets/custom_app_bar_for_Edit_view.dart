import 'package:flutter/material.dart';
import 'package:notesapp/widgets/done_icon.dart';
import 'package:notesapp/widgets/search_icon.dart';

class CustomAppBarForEditView extends StatelessWidget {
  const CustomAppBarForEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 54, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Edit note',
            style: TextStyle(fontSize: 32),
          ),
          DoneIcon()
        ],
      ),
    );
  }
}
