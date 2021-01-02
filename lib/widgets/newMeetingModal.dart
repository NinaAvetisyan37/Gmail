import 'package:flutter/material.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _createTile(context, 'Get a meeting link to share',
                  Icons.insert_link_sharp, _action1),
              _createTile(context, 'Start an instant meeting',
                  Icons.videocam_outlined, _action2),
              _createTile(context, 'Schedule in Google Calendar',
                  Icons.calendar_today_rounded, _action3),
              _createTile(context, 'Close', Icons.close, _action4),
            ],
          );
        });
  }

  ListTile _createTile(
      BuildContext context, String name, IconData icon, Function action) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      onTap: () {
        Navigator.pop(context);
        action();
      },
    );
  }

  _action1() {
    print('action 1');
  }

  _action2() {
    print('action 2');
  }

  _action3() {
    print('action 3');
  }

  _action4() {
    print('action 4');
  }
}
