import 'package:flutter/material.dart';
import 'package:gmail/class/message.dart';
import 'package:gmail/pages/mailPage.dart';
import 'package:gmail/pages/meetPage.dart';
import 'package:gmail/widgets/drawer.dart';
import 'package:gmail/widgets/mailTitle.dart';
import 'package:gmail/widgets/meetTitle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        bottomNavigationBar: bottomNavigationBar(),
        // floatingActionButton: floatingActionButton(),
        body: getBody(),
        drawer: drawer(),
      ),
    );
  }

  appBar() {
    return AppBar(
      title: getTitle(),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 15,
      currentIndex: selectedTab,
      unselectedItemColor: Color(0xff8F8F91),
      selectedItemColor: Colors.red,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      onTap: (index) {
        setState(() {
          selectedTab = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            label: 'Mail',
            icon: Stack(
              children: [
                new Icon(Icons.mail),
                new Positioned(
                  top: -2.0,
                  right: -3.0,
                  child: Stack(
                    children: [
                      Icon(Icons.brightness_1, size: 18.0, color: Colors.red),
                      Positioned(
                        top: 1.0,
                        right: 4.0,
                        child: Text(MessagesList.countIsNotRead().toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                )
              ],
            ),
            backgroundColor: Color(0xff333335)),
        BottomNavigationBarItem(
          label: 'Meet',
          icon: Icon(Icons.videocam),
          backgroundColor: Colors.white,
        )
      ],
    );
  }

  getBody() {
    switch (selectedTab) {
      case 0:
        return MailPage();
        break;
      case 1:
        return MeetPage();
        break;
    }
  }

  getTitle() {
    switch (selectedTab) {
      case 0:
        return MailTitle();
        break;
      case 1:
        return MeetTitle();
        break;
    }
  }
}
