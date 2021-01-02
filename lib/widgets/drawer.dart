import 'package:flutter/material.dart';

List<Map<String, dynamic>> items = [
  {'title': 'Primary', 'icon': Icons.inbox},
  {'title': 'Social', 'icon': Icons.people},
  {'title': 'Promotions', 'icon': Icons.local_offer},
  {'title': '', 'icon': ''},
  {'title': 'Starred', 'icon': Icons.star_border},
  {'title': 'Snoozes', 'icon': Icons.watch_later},
  {'title': 'Important', 'icon': Icons.label_outline},
  {'title': 'Sent', 'icon': Icons.send},
  {'title': 'Scheduled', 'icon': Icons.cancel},
  {'title': 'Outbox', 'icon': Icons.share},
  {'title': 'Drafts', 'icon': Icons.insert_drive_file},
  {'title': 'All mail', 'icon': Icons.mail},
  {'title': 'Spam', 'icon': Icons.error_outline},
  {'title': 'Trash', 'icon': Icons.delete},
  {'title': '', 'icon': ''},
  {'title': 'Calendar', 'icon': Icons.calendar_today},
  {'title': 'Contacts', 'icon': Icons.account_circle},
  {'title': 'Settings', 'icon': Icons.settings},
  {'title': 'Help & feedback', 'icon': Icons.help_outline}
];
Widget drawer() {
  return Drawer(
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 18),
              child: Text(
                'Gmail',
                style: TextStyle(fontSize: 20, color: Colors.red),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              color: Color(0xff8F8F91),
              thickness: 0.5,
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  getDrawerElements() {
                    switch (index) {
                      case 3:
                        return Text('ALL LABELS',
                            style: TextStyle(color: Colors.grey, fontSize: 12));
                        break;
                      case 14:
                        return Text('GOOGLE APPS',
                            style: TextStyle(color: Colors.grey, fontSize: 12));
                        break;
                    }
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: index != 3 && index != 14
                                ? Icon(
                                    items[index]['icon'],
                                    color: Colors.black,
                                    size: 20,
                                  )
                                : getDrawerElements()),
                        // SizedBox(width: 5),
                        Text(
                          items[index]['title'],
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return (index != 16)
                      ? Divider(
                          indent: 0,
                          color: Colors.white,
                        )
                      : Divider();
                },
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
