
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:servent_online/Screen/OptionsScreen.dart';
import 'package:servent_online/Screen/SplashScreen.dart';

import '../../Screen/HomeScreens/HomeScreen.dart';
import '../../Screen/Login.dart';
import '../../Screen/SignUp.dart';

class Routes {
  
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/OptionsScreen', page: () => OptionsScreen()),
    GetPage(name: '/Login', page: () => Login()),
    GetPage(name: '/SignUp', page: () => SignUp()),
    GetPage(name: '/HomeScreen', page: () => HomeScreen()),



  ];
}
