import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';


class MessageScreen extends StatelessWidget {
  List imgs = [

        "doctor1.jpg",
        "doctor2.jpg",
        "doctor3.jpg",
        "doctor4.jpg",
        "doctor1.jpg",
        "doctor2.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Padding(padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              "Messages",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Icon(
                  CupertinoIcons.search,
                  color: Color(0xFF7165D6),
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Active Now",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.symmetric(),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius:10 ,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/images/${imgs[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );

              }
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent Chat",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ChatScreen()),);
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/${imgs[index]}",
                      ),
                    ),
                    title: Text("Dr.Doctor Name",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18

                    ),),
                    subtitle: Text(
                        "Hello, Doctor are your there?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    trailing: Text(
                      "12:35",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),

                  ),
                );
              }),

        ],
      ),
    );
  }
}
