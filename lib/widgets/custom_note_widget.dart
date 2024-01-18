import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
          padding:
              const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFFFCC80),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Build your career with Tharwat Samy',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 20)),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Text('May21 , 2022',
                    style: TextStyle(color: Colors.black.withOpacity(.4))),
              )
            ],
          )),
    );
  }
}
