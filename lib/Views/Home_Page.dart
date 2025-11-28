import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Custom_AppBar.dart';

import 'Widgets/Custom_Notes_Item.dart';
import 'Widgets/Notes_View_Body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 35, 16, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppbar(),
            CustomNotesItem(),
          ],
        ),
      ),
    );
  }
}
