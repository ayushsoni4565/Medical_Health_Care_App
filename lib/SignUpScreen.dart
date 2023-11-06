import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_health_care_app/LogIn%20screen.dart';

class SignUpScreen extends StatefulWidget {


  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(CupertinoIcons.person),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(CupertinoIcons.mail),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(CupertinoIcons.phone),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(CupertinoIcons.person),
                    suffixIcon: InkWell(onTap: (){
                      if(passToggle == true){
                        passToggle = false;

                      }
                      else{
                        passToggle = true;
                      }
                      setState(() {

                      });
                    },
                      child: passToggle
                      ? Icon(CupertinoIcons.eye_slash_fill)
                      : Icon(CupertinoIcons.eye_fill),
                    ),

                  ),
                ),
              ),
              SizedBox(
                height:2,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context)=> LoginScreen(),
                        // ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: Center(child: Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> LoginScreen(),
                    ));
                  }, child: Text("Log In",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF7165D6),
                  ),))
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
