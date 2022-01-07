// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/main.dart';
// ignore: unused_import
import 'package:flutter_application_1/utils/routes.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';





class ForgetPass extends StatefulWidget {
  @override
  State<ForgetPass> createState() => _ForgetPassState();
}
 

class _ForgetPassState extends State<ForgetPass> {
  String password = "";
  bool isPasswordVisible = false;
  
  
  String name ="";
  bool changeButton =false;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("TackMeco",
        // ignore: prefer_const_constructors
        style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                      ),
        backgroundColor: Colors.white,
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        
          child: Column(
            children: [
               Lottie.asset(
                 "assets/images/forgetpass.json",
                fit: BoxFit.cover,
               ),
               // ignore: prefer_const_constructors
               SizedBox(
                height: 20.0,
               ),
              // ignore: prefer_const_constructors
              Text(
                "Forget Password!",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              Text(
                "Please enter your email for OTP verification",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
               const SizedBox(
                height: 5.0,
                ),
                Padding
                (padding:
                 const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                       keyboardType: TextInputType.emailAddress,
                   textInputAction: TextInputAction.done,
                      
                  decoration: const InputDecoration(
                    
                    hintText: "Enter Email",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    name= value;
                    setState(() {
                      
                    });
                  },
                ),
                 const SizedBox(
                height: 20.0,
                ),
                 
              
                 // ignore: prefer_const_constructors
                 SizedBox(
                height: 1.0,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changeButton = true;
                    });
                    //  
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ?50:300,
                    height: 40,
                    
                    alignment: Alignment.center,
                    child: const Text(
                      "Send OTP",
                    style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        color:Colors.blue,
                        borderRadius: BorderRadius.circular(8) ),
                  ),
                   
                ),
                 
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric (horizontal: 50, vertical: 20),

                  child: GestureDetector(
                    onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute
                       (builder:
                        (context) => LoginPage()
                        )
                        );
                      },

                  child: Text(
                  "Already Have an Account? Sign In",

                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ), // TextStyle
                    ), // Text
                ), // GestureDetector
                ) 
                // ElevatedButton(
                //   child:const Text("Login"),
                //   style: TextButton.styleFrom(
                //     minimumSize: const Size(120, 40)
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   )
                ],
                 
                 // ignore: prefer_const_constructors
                
                ),
                )
            ],
          ),
        ));
  }
}
