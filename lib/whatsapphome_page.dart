import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls_page.dart';
import 'package:whatsapp_clone/camera_page.dart';
import 'package:whatsapp_clone/chat_page.dart';
import 'package:whatsapp_clone/status_page.dart';

class WhatsAppHome extends StatefulWidget {
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State < WhatsAppHome > with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            CameraPage(),
            ChatPage(),
            StatusPage(),
            CallsPage()
          ],
        ),
      ),
    );
  }

 
}