import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_interview/model/user_interview.dart';
import 'package:test_interview/views/home/home_screen.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<List<UserInterview>> fetchUsers() async {
    String jsonString = await rootBundle.loadString('assets/auth.json');
    List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((json) => UserInterview.fromJson(json)).toList();
  }

  Future<void> login(String username, String password) async {
    List<UserInterview> users = await fetchUsers();
    users.forEach((element) async {
      if (element.username == username && element.password == password) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', username);
        await prefs.setString('avatar', element.avatar);
        print('Thanh cong ');
        Get.to(HomeScreen());
      } else {
        print('That bai ');
        // Get.snackbar(
        //   'Thong bao',
        //   'Thai bai',
        //   snackPosition: SnackPosition.BOTTOM,
        //   backgroundColor: Colors.black,
        //   colorText: Colors.white,
        // );
        return;
      }
    });
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username') != null;
  }
}
