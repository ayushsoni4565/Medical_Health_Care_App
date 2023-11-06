import 'package:flutter/material.dart';
import 'package:medical_health_care_app/LogIn%20screen.dart';
import 'package:medical_health_care_app/SignUpScreen.dart';
import 'package:medical_health_care_app/widgets/navbar_roots.dart';

class  Welcom_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> NavBar(),
                  ));
                }, child: Text("Skip",style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),)),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Doctors Appointment",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                letterSpacing: 1,
                wordSpacing: 2,
              ),),
              SizedBox(
                height: 15,
              ),
              Text("Appoint your doctor",style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                letterSpacing: 1,
                wordSpacing: 2
              ),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> LoginScreen(),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> SignUpScreen(),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

