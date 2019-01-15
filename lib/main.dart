import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapphome_page.dart';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'WhatsApp',
       theme: ThemeData(
         primaryColor: Colors.teal,
         accentColor: Color(0xff25D366)
       ),
       home: WhatsAppHome(),
    );
  }
}

