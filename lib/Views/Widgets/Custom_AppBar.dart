import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text('Notes', style: TextStyle(fontSize: 30)),
        CustomSearchIcon(),
      ],
    );
  }
}


class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        fixedSize: Size(50, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black45,
            width: 1,
            style: BorderStyle.solid,
          ),

        ),
        padding: EdgeInsets.all(10),
        // backgroundColor: Colors.grey.withValues(alpha: 0.4),
      ),
      child: Icon(Icons.search, size: 28),
      onPressed: () {},
    );
  }
}
