import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appointment_Screen extends StatelessWidget {
List imgs = [
  "doctor1.jpg",
  "doctor2.jpg",
  "doctor3.jpg",
  "doctor4.jpg",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFF7165D6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.arrow_left,
                          color: Colors.white,
                          size: 25,
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 25,
                        )


                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/doctor3.jpg"),
radius: 35,
                    ),
                    SizedBox(height: 15,),
                    Text("Dr. Doctor Name",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text("Therapist",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F97E2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(CupertinoIcons.phone,
                            color: Colors.white,
                            size: 25 ,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F97E2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(CupertinoIcons.chat_bubble_text_fill,
                            color: Colors.white,
                            size: 25 ,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),

              ],
            ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height /1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20,left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),),
                  SizedBox(height: 5,),
                  Text("Lorem Ipsum is simply dummy "
                      "text of the printing and typesetting"
                      " industry. Lorem Ipsum has been the"
                      " industry's standard dummy text ever "
                      "since the 1500s",style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("Reviews",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(width: 15,),
                    Icon(CupertinoIcons.star_fill,color: Colors.amber,),
                    Text("4.9",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),),
                    SizedBox(width: 5,),
                    Text("(124)",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0Xff7165D6),
                    ),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("Sea all",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF7165D6),
                    ),),
                    ),
                  ],),
                  SizedBox(height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width /1.4,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/images/${imgs[index]}"),
                              ),
                              title: Text(""
                                  "Dr. Doctor Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text("1 day ago"),
                              trailing: Row(mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.star_fill,color:Colors.amber ,),
                                  Text("4.9",style: TextStyle(
                                    color: Colors.black54,
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Many thanks to Dr.dear. He is a great and professional doctor",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                              color: Colors.black,
                            ),
                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0EEFA),
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        CupertinoIcons.location_solid,
                        color: Color(0xFF7165D6),
                        size: 30,
                      ),
                    ),
                    title: Text(
                      "New york, Medical Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("address line of the medical center,"),
                  ),
                  

                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consultation price",style: TextStyle(
                  color: Colors.black54,
                ),),
                Text("\$100",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 20,
                ),)
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Book Appoinment",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
