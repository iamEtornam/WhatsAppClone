import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        widthFactor: 350.0,
        child: Padding(
          padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
          child: Text("To start calling contacts who have WhatsApp, tap on the button at the bottom of your screen.",
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey
        ),
        ),
        )
      ),
 
 floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call,
          color: Colors.white, ),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}