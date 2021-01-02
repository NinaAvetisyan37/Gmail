import 'package:flutter/material.dart';
import 'package:gmail/pages/joinWithCode.dart';
import 'package:gmail/widgets/newMeetingModal.dart';

class MeetPage extends StatefulWidget {
  @override
  _MeetPageState createState() => _MeetPageState();
}

class _MeetPageState extends State<MeetPage> {
  Modal modal = new Modal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: meet(),
      backgroundColor: Colors.white,
    );
  }

  Widget meet() {
    return SingleChildScrollView(
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              MaterialButton(
                color: Colors.blue[400],
                onPressed: () => modal.mainBottomSheet(context),
                child: Text(
                  '   New meeting   ',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  // side: BorderSide(color: Colors.grey[300])
                ),
              ),
              SizedBox(width: 50),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Colors.grey[300])),
                textColor: Colors.blue[400],
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => JoinWithACode()));
                },
                child: Text('Join with a code'),
              )
            ]),
            SizedBox(height: 50),
            Container(
              width: 150,
              height: 150,
              //  child:Image.network('https://img2.pngio.com/antreprenor-template-icon-business-meeting-icon-labels-png-business-meeting-icon-png-728_732.jpg'),
              margin: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://img2.pngio.com/antreprenor-template-icon-business-meeting-icon-labels-png-business-meeting-icon-png-728_732.jpg')),
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 95, right: 95, bottom: 20),
              child: Text(
                'Get a link you can share',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                text: TextSpan(
                  text: 'Tap',
                  style: TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' New meeting ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                        text:
                            'to get a link you can send to people you want to meet with'),
                  ],
                ),

                /*Text(
          'Tap New meeting to get a link you ccan send to people you want to meet with',
          style: TextStyle(color: Colors.grey, fontSize: 13),
          textAlign: TextAlign.center,
        ),*/
              ),
            ),
          ]),
    );
  }
}
