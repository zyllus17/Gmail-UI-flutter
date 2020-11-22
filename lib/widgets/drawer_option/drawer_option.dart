import 'package:flutter/material.dart';
import 'package:screen/responsive/orientation_layout.dart';
import 'package:screen/responsive/screen_type_layout.dart';
import 'package:screen/widgets/mails/mail_screen.dart';

import 'drawer_option_mobile.dart';
import 'drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(
          iconData: iconData,
        ),
        portrait: DrawerOptionMobilePortrait(
          title: title,
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        portrait: DrawerOptionTabletPortrait(
          iconData: iconData,
          title: title,
        ),
        landscape: DrawerOptionMobilePortrait(
          iconData: iconData,
          title: title,
        ),
      ),
    );
  }
}

class AppDrawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Gmail',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.image),
            title: Text('All inboxes'),
          ),
          Divider(
            color: Colors.black,
          ),
          MailTablets(),
          Labels(
            label: 'ALL LABELS',
            textSize: 12,
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.star_outline),
            title: Text('Starred'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.schedule_outlined),
            title: Text('Snoozed'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.label_important_outline),
            title: Text('Important'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.send_outlined),
            title: Text('Sent'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.cancel_schedule_send_outlined),
            title: Text('Scheduled'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.unarchive_outlined),
            title: Text('Outbox'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.note_outlined),
            title: Text('Drafts'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.mail_outline),
            title: Text('All mail'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.report_outlined),
            title: Text('Spam'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.delete_outline),
            title: Text('Bin'),
          ),
          Labels(
            label: 'GOOGLE APPS',
            textSize: 12,
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Contacts'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            selectedTileColor: Colors.red,
            leading: Icon(Icons.help_outline),
            title: Text('Help and feedback'),
          ),
        ],
      ),
    );
  }
}
