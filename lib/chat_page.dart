import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat.dart';

class ChatPage extends StatefulWidget {
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State < ChatPage > {
  bool isExist = false;

bool hasChat(BuildContext context, int index){
  if(dummyData[index].chat_number == "0"){
  isExist = true;
  }else{
    isExist = false;
  }
  return isExist;
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0.0, 16.0, 0.0),
            child: Divider(height: 2.0, ),
          );
        },
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: < Widget > [
                Text(dummyData[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(dummyData[index].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0
                  ),
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: < Widget > [
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(dummyData[index].message,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ),
                hasChat(context, index)
                ?
                Container(
                  child: Text(""),
                ):
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    shape: BoxShape.circle
                  ),
                  child: Text('1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0
                  ),
                  ),
                )
              ], ),
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[index].avatarUrl),

            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message,
          color: Colors.white, ),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}