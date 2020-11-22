import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Column(children: AppDrawer.getDrawerOptions(),),
    );
  }
}


class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 8,
        child: Row(
          children: [
            IconButton(
              splashColor: Colors.grey,
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Expanded(
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search in emails",
                  contentPadding: const EdgeInsets.only(top: 16.0),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}