import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:servent_online/Utils/Theme/app_color.dart';
class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      height: 250,
                      width: 250,
                     // color: Colors.black,
                      child: Image.asset("assets/images/Welcome.png")),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                  ),
                ],
              ),


              SizedBox(
                height: 30,
              ),
              Spacer(),
              Container(
                height: 48,
                width: Get.width,
                child: Center(
                  child: Text("Start As a Worker", textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7210FF)),),
                ),

                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xff7210FF),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 48,
                width: Get.width,
                child: Center(
                  child: Text("Start As a  User", textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7210FF)),),
                ),

                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xff7210FF),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?"),
                  TextButton(onPressed: () {
                    Get.toNamed("/Login");
                  },
                    child: Text("Sign In",
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12,
                      color: AppColors.Primary_Color
                      ),
                    ),

                  ),
                ],


              ),


            ],

          ),
        ),
      ),
    );
  }
}