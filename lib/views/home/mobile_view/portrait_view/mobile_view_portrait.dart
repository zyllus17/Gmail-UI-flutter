import 'package:flutter/material.dart';
import 'package:screen/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:screen/widgets/buttons/pencil_button.dart';
import 'package:screen/widgets/drawer_option/drawer_option.dart';
import 'package:screen/widgets/mails/mail_screen.dart';

class HomeMobilePortrait extends StatefulWidget {
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  _HomeMobilePortraitState createState() => _HomeMobilePortraitState();
}

class _HomeMobilePortraitState extends State<HomeMobilePortrait> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawers(),
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBar(),
              MailScreen(),
            ],
          ),
        ),
        floatingActionButton: PencilButton(),
      ),
    );
  }
}
