// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/login_page.dart';
// ignore: unused_import
import 'package:flutter_application_1/utils/routes.dart';
import 'package:lottie/lottie.dart';





class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}
 

class _SignUpState extends State<SignUp> {
  String password = "";
  bool isPasswordVisible = false;
  bool agree = false;
  void _doSomething() {
    // Do something
  }
  
  
  String name ="";
  bool changeButton =false;

  get xFF2661FA => null;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
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
                 "assets/images/signup.json",
                fit: BoxFit.cover,
               ),
               // ignore: prefer_const_constructors
               SizedBox(
                height: 10.0,
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
                "Register Your Account",
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
                    
                    hintText: "ex. example@email.com",
                    labelText: "Company Name",
                    prefixIcon: Icon(Icons.business),
                    
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    name= value;
                    setState(() {
                      }
                      );
                  },
                ),
                const SizedBox(
                height: 20.0,
                ),
                TextFormField(
                       keyboardType: TextInputType.emailAddress,
                   textInputAction: TextInputAction.done,
                      
                  decoration: const InputDecoration(
                    
                    hintText: "ex. example@email.com",
                    labelText: "Email Id",
                    prefixIcon: Icon(Icons.mail),
                    
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    name= value;
                    setState(() {
                      }
                      );
                  },
                ),
                const SizedBox(
                height: 20.0,
                ),

                TextFormField(
                       keyboardType: TextInputType.emailAddress,
                   textInputAction: TextInputAction.done,
                      
                  decoration: const InputDecoration(
                    
                    hintText: "ex. 90********",
                    labelText: "Contact Number",
                    prefixIcon: Icon(Icons.contacts),
                    
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    name= value;
                    setState(() {
                      }
                      );
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
                SizedBox(
                height: 20.0,
                ),
                TextFormField(
                  
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Confirm Password",
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
                Row(
                    children: [
                      Material(
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {
                           
                          },
                        ),
                      ),
                      Text(
                        'I have read and accept terms \nand conditions',
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
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
                      "Sign Up",
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
                ) // Container
                
                ],
                 
                
                
                ),
                )
            ],
          ),
        ));
  }
}
