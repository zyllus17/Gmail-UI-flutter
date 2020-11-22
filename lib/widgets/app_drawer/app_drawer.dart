import 'package:flutter/material.dart';
import 'package:screen/responsive/orientation_layout.dart';
import 'package:screen/responsive/screen_type_layout.dart';
import 'package:screen/widgets/drawer_option/drawer_option.dart';

import 'app_drawer_mobile.dart';
import 'app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}

class FloatAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8,
        child: Row(
          children: <Widget>[
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
