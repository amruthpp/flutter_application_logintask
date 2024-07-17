// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_logintask/view/loginscreen/loginscreen.dart';

class Regscreen extends StatelessWidget {
  Regscreen({super.key});
   static const email = "abc@xxx";
  static const Password = "amruthpp";
   static const confirmpassword = "amruthpp";  


   

  @override
  Widget build(BuildContext context) {
final _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();




    return Scaffold(
      appBar: AppBar(title: Text('Sign Up for Free')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Your Email Address'),
                validator: (value) {
                      if(value == null && value!.contains("@")) {
                        return null;
                        
                      } else {
                        return "enter a valid username";
          
                    }
            }
          
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration
                (labelText: 'Your Password'
                ),
                validator: (value) {
                      if(value != null && value.length >7) {
                        return null;  
                      } else {
          
                      
                      return " enter a valid password";
                    }
                    },
                obscureText: true,
                
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: 'Your Confirm Password'),
                validator: (value) {
                      if(value != null && value.length >7) {
                        return null;  
                      } else {
          
                      
                      return " enter a valid password";
                    }
                    },
                   
                obscureText: true,
              ),
              ElevatedButton(
                
                onPressed: (
                  
                ){
                  bool isValidated = _formKey.currentState!.validate();
                      if (kDebugMode) {
                        print(isValidated);
                      }
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Loginscreen(),));
                  
               
                },
                child: Text('Sign Up'),
              ),
              TextButton(
                onPressed: () {
                 
                },
                child: Text('Already have an account? Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}