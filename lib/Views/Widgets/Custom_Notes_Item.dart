import 'package:flutter/material.dart';

import '../Edit_Note_View.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

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
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'You`re Better than that...Give me some sunshine ..Give me some rain..',
                    style: TextStyle(color: Colors.black38, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black),
                  iconSize: 30,
                ),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('27 Nov 2025', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
