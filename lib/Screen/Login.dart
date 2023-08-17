import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:servent_online/Utils/Fonts/app_fonts.dart';
import 'package:servent_online/Utils/Theme/app_color.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _passwordVisible =false;
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            SizedBox(
              height: 10,
            ),

            Text("Login to your\nAccount",
            style: TextStyle(
              color: Colors.black,
              fontFamily: Weights.Bold,
              fontSize: 24
            ),
            ),


            SizedBox(
              height: 10,
            ),

            Spacer(),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(

                cursorColor: AppColors.TextfieldColor,
          decoration: InputDecoration(
            focusColor: AppColors.TextfieldColor,
            border: InputBorder.none,
            filled: true,
            fillColor: AppColors.TextfieldColor,
            label: Text("Email"),
            labelStyle: TextStyle(
              color: AppColors.TextfieldTextColor
            ),
          ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },

              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                obscureText: _passwordVisible,
                cursorColor: AppColors.TextfieldColor,
                decoration: InputDecoration(
                  focusColor: AppColors.TextfieldColor,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors.TextfieldColor,
                  label: Text("Password"),
                  labelStyle: TextStyle(
                      color: AppColors.TextfieldTextColor
                  ),
                  suffixIcon:  IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColors.TextfieldTextColor,
                    ), onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text("I agree with terms & condtion",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: Weights.Medium
                ),
              ),

              SizedBox(
                height: 20,
              ),
              
              
              InkWell(
                onTap: (){
                    Get.toNamed("/BottomBar");
                },
                child: Container(
                  height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColors.Primary_Color,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Center(
                    child: Text("Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: Weights.Medium
                      ),
                    ),
                  ),
                ),
              ),
            ],
    ),

    ),
            SizedBox(
              height: 20,
            ),
            Text("Forget the Password ?",
              style: TextStyle(
                  color: AppColors.Primary_Color,
                  fontSize: 16,
                  fontFamily: Weights.Medium
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Spacer(),
            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 2,
                      )
                  ),

                  Text("  Or Continue With  "),

                  Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 2,
                      )
                  ),
                ]
            ),


            Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                    ),
                    child: Image.asset("assets/images/FaceBook.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                    ),
                    child: Image.asset("assets/images/google.png"),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Did't have any account?  ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: Weights.Medium
                  ),
                ),
                TextButton(
                  onPressed: () { 
                    Get.toNamed("/SignUp");
                  },
                  child: Text("Sign Up",
                    style: TextStyle(
                        color: AppColors.Primary_Color,
                        fontSize: 16,
                        fontFamily: Weights.Medium
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(
              height: 20,
            ),




          ],
        ),
      ),
    );
  }
}
