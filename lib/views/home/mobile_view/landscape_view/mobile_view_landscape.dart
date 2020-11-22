/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape
import 'package:flutter/material.dart';
import 'package:screen/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:screen/widgets/buttons/compose_button.dart';
import 'package:screen/widgets/drawer_option/drawer_option.dart';
import 'package:screen/widgets/mails/mail_screen.dart';

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawers(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBar(),
              MailScreen(),
            ],
          ),
        ),
        floatingActionButton: ComposeButton(),
      ),
    );
  }
}
