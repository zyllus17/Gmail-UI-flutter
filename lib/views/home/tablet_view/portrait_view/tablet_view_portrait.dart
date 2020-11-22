import 'package:flutter/material.dart';
import 'package:screen/widgets/app_drawer/app_drawer.dart';
import 'package:screen/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:screen/widgets/buttons/compose_button.dart';
import 'package:screen/widgets/drawer_option/drawer_option.dart';
import 'package:screen/widgets/mails/mail_screen.dart';

class HomeViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: AppDrawers(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
              ],
            ),
            SearchBar(),
            MailScreen(),
          ],
        ),
      ),
      floatingActionButton: ComposeButton(),
    ));
  }
}
