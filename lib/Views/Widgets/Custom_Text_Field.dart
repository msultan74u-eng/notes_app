

import 'package:flutter/material.dart';

import '../../Constants/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,this.maxLines=1});

  final String hintText;
  final int maxLines;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: TextField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          // hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
        ),

      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(

          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: color ?? Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),

        );
  }
}
