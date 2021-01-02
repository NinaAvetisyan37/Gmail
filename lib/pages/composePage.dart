import 'package:flutter/material.dart';

class ComposePage extends StatefulWidget {
  @override
  _ComposePageState createState() => _ComposePageState();
}

class _ComposePageState extends State<ComposePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: appBar(), body: body()));
  }

  Widget appBar() {
    return AppBar(
      title: Row(children: [
        Text(
          'Compose',
          style: TextStyle(color: Colors.black),
        ),
        Spacer(),
         Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*DropdownButton<String>(
                 // isExpanded: true,
                  icon:Icon(Icons.attachment) ,
                  items: <String>['Attach file', 'Insert from Drive']
                      .map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),*/


                PopupMenuButton<String>(
          icon: Icon(Icons.attachment),
          itemBuilder: (BuildContext context) {
            return ['Attach file', 'Insert from Drive'].map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),

 PopupMenuButton<String>(
          icon: Icon(Icons.more_vert),
          itemBuilder: (BuildContext context) {
            return [
                    'Schedule send',
                    'Add from Contacts',
                    'Confidential mode',
                    'Save draft',
                    'Discard',
                    'Settings',
                    'Help & feedback'
                  ].map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),

           

              ]),
        
      ]),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  body() {
    return Column(
      children: [
        ListTile(
          leading: Text(
            'From',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          title: TextField(
              decoration: InputDecoration(
            hintText: 'ninaavetisyan1999@gmail.com',
            hintStyle: TextStyle(color: Colors.black, fontSize: 17),
            // labelText: "From",
            border: InputBorder.none,
            labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
          )),
        ),
        Divider(
          thickness: 1,
        ),
        ListTile(
          leading:
              Text('To', style: TextStyle(fontSize: 20, color: Colors.grey)),
          title: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelStyle:
                      TextStyle(color: Colors.black54, fontSize: 18.0))),
          trailing: Icon(Icons.keyboard_arrow_down),
        ),
        Divider(
          thickness: 1,
        ),
        ListTile(
          title: TextField(
              decoration: InputDecoration(
            hintText: "Subject",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            border: InputBorder.none,
          )),
        ),
        Divider(
          thickness: 1,
        ),
        Expanded(
          flex: 4,
          child: ListTile(
            title: TextField(
                //    focusNode:FocusNode.of().requestFocus(m) ,
                decoration: InputDecoration(
              hintText: "Compose Email",
              border: InputBorder.none,
              hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            )),
          ),
        ),
        Divider(),
      ],
    );
  }
}
