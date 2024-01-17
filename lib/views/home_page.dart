import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          title: const Text(
            'Notes',
          ),
        ),
        body: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteWidget(
                noteModel: notes[index],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepOrange,
          child: const Icon(Icons.add),
        ));
  }
}

class NoteWidget extends StatelessWidget {
  NoteWidget({
    required this.noteModel,
    super.key,
  });

  NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: noteModel.color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 10, top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    noteModel.noteTitle,
                    style: const TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
                Text(
                  noteModel.noteDesc,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                Text(
                  DateTime.timestamp().toString(),
                  style: const TextStyle(color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




// child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 16, left: 25),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Flutter Tips',
//                       style: TextStyle(color: Colors.black, fontSize: 32),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.delete,
//                         size: 40,
//                       ),
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//               const Align(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 27),
//                   child: Text(
//                     'Build your career with Tharwat Samy',
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 ),
//               )
//             ],
//           ),