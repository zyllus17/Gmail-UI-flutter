import 'package:flutter/material.dart';

class PencilButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.create,
        color: Colors.red,
      ),
      backgroundColor: Colors.white,
    );
  }
}
