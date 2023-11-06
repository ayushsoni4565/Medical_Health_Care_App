import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatsample_screen.dart';

class ChatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/doctor3.jpg"),
                ),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Dr.Doctor",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
              size: 26,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
             child: Icon(
               CupertinoIcons.videocam_fill,
               color: Colors.white,
               size: 26,
             ),

            ),
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
              size: 26,
            ),

            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
          itemBuilder: (context,index)=> ChatSample(),

      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 8),
            child: Icon(
              CupertinoIcons.add,
              size: 30,
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 5),
            child: Icon(
              CupertinoIcons.smiley,
              color: Colors.amber,
              size: 30,
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width /1.8,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Type Something",
                  border: InputBorder.none,
                ),
              ),
            ),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.cursor_rays,
              size: 30,
              color: Color(0xFF7165D6),
            ),
            ),

          ],
        ),
      ),
    );
  }
}
