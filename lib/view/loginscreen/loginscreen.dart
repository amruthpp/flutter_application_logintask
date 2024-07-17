// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_logintask/view/loginscreen/regscreen/regscreen.dart';

class Loginscreen extends StatelessWidget {

  
   Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



appBar: AppBar(title: Text('Sign in to Your Account')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              
              decoration: InputDecoration(labelText: 'Your Email Address'),
            ),
            TextField(
              
              decoration: InputDecoration(labelText: 'Your Password'),
              obscureText: true,
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text('Remember Me'),
                SizedBox(width: 200,),
                TextButton(onPressed: () {  },
                child: Text("forgot password",style: TextStyle(color: Colors.blue),))
              ],
              
            ),
           
            ElevatedButton(
              onPressed:(){} ,
              child: Text('Sign In'),
            ),
            SizedBox(height: 400,),
            TextButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder:(context) => Regscreen(),));
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),

      )
        );
  }
}