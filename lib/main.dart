import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_interview/controllers/welcome_controller.dart';
import 'package:test_interview/views/checkdata.dart';
import 'package:test_interview/views/login/login_screen.dart';

import 'views/home/home_screen.dart';

Widget defaultHome = WelcomeScreen();
const kOffWhite = Color(0xffF3F4F8);
const kDark = Color(0xff000000);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          initialRoute: '/',
          getPages: [
            GetPage(
                name: '/',
                page: () => WelcomeScreen(),
                binding: WelcomeBinding()),
            GetPage(name: '/login', page: () => LoginSceen()),
            GetPage(name: '/home', page: () => HomeScreen()),
          ],
          debugShowCheckedModeBanner: false,
          title: 'Interview',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              scaffoldBackgroundColor: kOffWhite,
              iconTheme: const IconThemeData(color: kDark),
              primarySwatch: Colors.grey),
          home: defaultHome,
        );
      },
    );
  }
}
