import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servent_online/Utils/Fonts/app_fonts.dart';
import 'package:servent_online/Utils/Theme/app_color.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Scaffold(

      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 60,
            width: Get.width,
            color: Colors.white ,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/Ellipse 1.png",
                              fit: BoxFit.fill,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Andrew Ainsley",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: Weights.SemiBold
                            ),
                          ),
                          Text("Johar Town ,Lahore",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFamily: Weights.Regular
                            ),
                          ),



                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(CupertinoIcons.bell),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                TextFormField(

                  cursorColor: AppColors.TextfieldColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search,
                    color: Colors.grey,
                    ),
                    suffixIcon: Image.asset("assets/images/Mask group.png"),
                    focusColor: AppColors.TextfieldColor,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.TextfieldColor,
                    label: Text("Search"),
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special Offers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: Weights.SemiBold
                      ),
                    ),

                    Text("See ALL",
                      style: TextStyle(
                          color: AppColors.Primary_Color,
                          fontSize: 14,
                          fontFamily: Weights.Medium
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 10,
                ),


                Container(
                  height: 140,
                  width: Get.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    itemCount: 5,
                    reverse: true,

                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(

                        children: [

                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 136,
                            width: 335,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffEEECEC)
                            ),
                          ),
                        ],
                      );

                  },

                  ),
                ),



                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: Weights.SemiBold
                      ),
                    ),

                    Text("See ALL",
                      style: TextStyle(
                          color: AppColors.Primary_Color,
                          fontSize: 14,
                          fontFamily: Weights.Medium
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffF1E8FF)
                              ),
                              child: Center(child: Image.asset("assets/images/Cleaning.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Cleaning",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),





                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffFFF5E9)
                              ),
                              child: Center(child: Image.asset("assets/images/Repairing.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Repairing",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),







                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffE9F5FE)
                              ),
                              child: Center(child: Image.asset("assets/images/Painting.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Painting",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),






                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffFFF9EB)
                              ),
                              child: Center(child: Image.asset("assets/images/Laundry.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Laundry",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        )

                      ],
                    ),




                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffFEEDEC)
                              ),
                              child: Center(child: Image.asset("assets/images/Appliance.png")),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Text("Appliance",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),





                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffEEF7EF)
                              ),
                              child: Center(child: Image.asset("assets/images/Cleaningas.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Cleaning",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),







                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffE7F9FB)
                              ),
                              child: Center(child: Image.asset("assets/images/Shifting.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Shifting",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        ),






                        Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffF1E8FF)
                              ),
                              child: Center(child: Image.asset("assets/images/More.png")),
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text("More",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: Weights.Medium
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ],
                ),



                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey
                ),



                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Most Poplar Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: Weights.SemiBold
                      ),
                    ),

                    Text("See ALL",
                      style: TextStyle(
                          color: AppColors.Primary_Color,
                          fontSize: 14,
                          fontFamily: Weights.Medium
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
