import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(alignment: Alignment.centerLeft,
              child: Text("Settings",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),),
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
              ),
              title: Text("Dr.Doctor Name",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),
              subtitle: Text("Profile"),
            ),
            Divider(height: 50,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.person,
                color: Colors.blue,
                size: 35,),
              ),
              title: Text("Profile",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.bell,
                  color: Colors.deepPurple,
                  size: 35,),
              ),
              title: Text("Notification",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.square_favorites,
                  color: Colors.indigo,
                  size: 35,),
              ),
              title: Text("Privacy",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.settings_solid,
                  color: Colors.green,
                  size: 35,),
              ),
              title: Text("Genral",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.info_circle,
                  color: Colors.orange,
                  size: 35,),
              ),
              title: Text("About Us",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
            Divider(height: 40,),
            SizedBox(height: 5,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.square_arrow_right,
                  color: Colors.redAccent,
                  size: 35,),
              ),
              title: Text("Log Out",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              trailing: Icon(CupertinoIcons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
