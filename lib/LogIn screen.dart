import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter UserName"),
                    prefixIcon: Icon(CupertinoIcons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                    prefixIcon: Icon(CupertinoIcons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        if(passToggle == true){
                          passToggle = false;
                        }
                        else{
                          passToggle = true;
                        }
                        setState(() {

                        });
                      },
                      child: passToggle ? Icon(CupertinoIcons.eye_slash_fill)
                      : Icon(CupertinoIcons.eye_fill),
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                        child: Center(child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any account?",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> SignUpScreen(),
                    ));
                  }, child: Text("Create Account",style: TextStyle(
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
