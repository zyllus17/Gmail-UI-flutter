import 'package:flutter/material.dart';
import 'package:screen/widgets/mails/mails.dart';

class MailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Labels(
          label: 'PRIMARY',
        ),
        MailTablets(),
        Mails(
          image: AssetImage('assets/profile.jpg'),
          sender: "Maruf Hassan",
          title: "Trip to London",
          time: "2:13 PM",
          msg: "Check out the planning document",
        ),
        Mails(
          image: AssetImage('assets/ezio.jpg'),
          sender: "Auditore, Ezio",
          title: "Finally met Altair",
          time: "1:00 PM",
          msg: "No books. No wisdom. Just you fratello Mio.",
        ),
        Mails(
          image: AssetImage('assets/arthur.jpg'),
          sender: "Arthur Morgan",
          title: "No cure for TB",
          time: "2:57 PM",
          msg: "Take care of John Marston for me",
        ),
        Mails(
          image: AssetImage('assets/kratos.jpg'),
          sender: "Kratos",
          title: "Dad of BOI!!!",
          time: "12:57 PM",
          msg: "I am dad of Atreus also known as Loki",
        ),
        Mails(
          image: AssetImage('assets/bayek.jpg'),
          sender: "Bayek of Siwa",
          title: "Templar control uprooted",
          time: "4:55 PM",
          msg: "I have succeeded, the templar control is no more",
        )
      ],
    );
  }
}

class Labels extends StatelessWidget {
  final double textSize;
  final String label;

  const Labels({this.label, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        label,
        style: TextStyle(fontSize: textSize, color: Colors.black87),
      ),
    );
  }
}

class MailTablets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryMail(
          iconData: Icons.inbox_outlined,
          title: 'Primary',
          msg: 'Google Play',
          count: '25 new',
          colors: Color(0xFFDD1742),
        ),
        PrimaryMail(
          iconData: Icons.group_outlined,
          title: 'Social',
          msg: 'YouTube',
          count: '12 new',
          colors: Color(0xff1a73e8),
        ),
        PrimaryMail(
          iconData: Icons.local_offer_outlined,
          title: 'Promotions',
          msg: 'Think with Google',
          count: '18 new',
          colors: Color(0xff1e8e3e),
        ),
      ],
    );
  }
}
