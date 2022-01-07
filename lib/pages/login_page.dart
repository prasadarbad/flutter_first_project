// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/signup.dart';
// ignore: unused_import
import 'package:flutter_application_1/utils/routes.dart';
import 'package:lottie/lottie.dart';





class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
 

class _LoginPageState extends State<LoginPage> {
  String password = "";
  bool isPasswordVisible = false;
  
  
  String name ="";
  bool changeButton =false;

  get xFF2661FA => null;
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
                 "assets/images/welcome.json",
                fit: BoxFit.cover,
               ),
               // ignore: prefer_const_constructors
               SizedBox(
                height: 1.0,
               ),
              // ignore: prefer_const_constructors
              Text(
                "Welcome $name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              Text(
                "Please sign in into your account",
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
                    
                    hintText: "Enter Username",
                    labelText: "username",
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
                 TextFormField(
                  
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                     prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: isPasswordVisible 
                      // ignore: prefer_const_constructors
                      ? Icon(Icons.visibility_off)
                      // ignore: prefer_const_constructors
                      : Icon(Icons.visibility),
                      onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                    ),
                    border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding:const EdgeInsets.symmetric(vertical:10.0,horizontal:32.0),
                  child: TextButton (
                    child: const Text("Forget Password"),
                    onPressed: () {
                       Navigator.pushNamed(context, MyRoutes.forgetRoute);
                    },
                  ),
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
                    onEnd: () {
                      Navigator.push(context, MaterialPageRoute (builder: (context) => HomePage()
                      )
                      );
                      },
                    child: const Text(
                      "login",
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
                      Navigator.push(context, MaterialPageRoute (builder: (context) => SignUp()
                      )
                      );
                      },

                  child: Text(
                  "Don't Have an Account? Sign up",

                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ), // TextStyle
                    ), // Text
                ), // GestureDetector
                ) // Container
                
                ],
                 
                 // ignore: prefer_const_constructors
                
                ),
                )
            ],
          ),
        ));
  }
}
