

import 'package:flutter/material.dart';

import 'Custom_Text_Field.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        CustomTextField(hintText: 'Title',),
        CustomTextField(hintText: 'Content',maxLines: 5,),

      ],
    );
  }
}
