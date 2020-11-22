import 'package:flutter/material.dart';

class ComposeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          height: 50,
          width: 120,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.create,
                  color: Colors.red,
                ),
                SizedBox(width: 10),
                Text(
                  'Compose',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
