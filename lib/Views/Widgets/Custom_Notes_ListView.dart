



import 'package:flutter/material.dart';

import 'Custom_Notes_Item.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomNotesItem();
      },

    );
  }
}
