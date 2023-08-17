import 'package:flutter/material.dart';
import 'package:servent_online/Screen/HomeScreens/HomeScreen.dart';
import 'package:servent_online/Screen/HomeScreens/MyBookmark.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF7210FF),
          unselectedItemColor: Color(0xff868686),
          selectedFontSize: 14,
          unselectedFontSize: 14,
            currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {

              print(_currentIndex= index);

            });
            // Respond to item press.
          },

          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon:
              _currentIndex==0?
              Image.asset("assets/images/Home.png",
              color: Color(0xFF7210FF),
              ):Image.asset("assets/images/Home.png",
                //color: Colors.purple,
              )

            ),
            BottomNavigationBarItem(
              label: 'Bookings',
              icon:  Icon(Icons.list_alt_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Search',

              icon:
              _currentIndex==2?
              Image.asset("assets/images/Search.png",
                color: Color(0xFF7210FF),
              ):
              Image.asset("assets/images/Search.png")
              ,
            ),
            BottomNavigationBarItem(
              label: 'Inbox',
              icon:
              _currentIndex==3?
              Image.asset("assets/images/Inbox.png",
                color: Color(0xFF7210FF),
              ):
              Image.asset("assets/images/Inbox.png"),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon:
              _currentIndex ==4?
              Image.asset("assets/images/Profile.png",
                color: Color(0xFF7210FF),
              ):
              Image.asset("assets/images/Profile.png"),
            ),
          ],

        ),
      body: _currentIndex == 0?HomeScreen():_currentIndex == 1?MyBookMArks():Container(),
    );
  }
}
