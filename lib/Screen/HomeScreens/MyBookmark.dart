import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servent_online/Utils/Fonts/app_fonts.dart';
import 'package:servent_online/Utils/Theme/app_color.dart';
class MyBookMArks extends StatefulWidget {
  const MyBookMArks({super.key});

  @override
  State<MyBookMArks> createState() => _MyBookMArksState();
}

class _MyBookMArksState extends State<MyBookMArks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.black,
          ), onPressed: () {
            Get.back();
        },
        ),
        title: Text("My Bookings",
        style: TextStyle(
          color: Colors.
            black,
          fontFamily: Weights.SemiBold
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 113,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 98,
                                width: 87,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,

                                ),
                                child: Center(
                                  child: Image.asset("assets/images/Conyta.png",
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),

                          ],
                        ),



                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("James Bond",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  fontFamily: Weights.Regular
                              ),
                            ),

                            Text("House Cleaning",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: Weights.SemiBold
                              ),
                            ),




                            Text("Price",
                              style: TextStyle(
                                  color: AppColors.Primary_Color,
                                  fontSize: 8,
                                  fontFamily: Weights.Regular
                              ),
                            ),
                            Text("\$20",
                              style: TextStyle(
                                  color: AppColors.Primary_Color,
                                  fontSize: 18,
                                  fontFamily: Weights.SemiBold
                              ),
                            ),



                          ],
                        ),
                      ],
                    ),


                    Image.asset("assets/images/Favorite.png")
                  ],
                ),
              ),
            ),


            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
