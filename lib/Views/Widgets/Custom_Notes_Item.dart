import 'package:flutter/material.dart';

import '../../Models/NoteModel.dart';
import '../Edit_Note_View.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.note});

  final Notemodel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
        padding: EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(color: Colors.black38, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.delete, color: Colors.black),
                  iconSize: 30,
                ),
              ),
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Text(
                          note.date.substring(11, 16),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Text(
                          note.date.substring(0, 10),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
