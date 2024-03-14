import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final RxBool isLoggedIn = false.obs;
  final RxString userName = ''.obs;
  final RxString userAvatar = ''.obs;
  RxList<DataModel> dataList = <DataModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    checkLoggedInStatus();
    loadData();
  }

  Future<void> loadData() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    List<dynamic> jsonData = json.decode(jsonString);
    dataList.value = jsonData.map((data) => DataModel.fromJson(data)).toList();
  }

  Future<void> checkLoggedInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');
    String? avat = prefs.getString('avatar');
    if (username != null) {
      isLoggedIn.value = true;
      userName.value = username;
      userAvatar.value = avat ?? '';
    }
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    Get.offAllNamed('/login');
  }
}

class DataModel {
  final String author;
  final int createdDate;
  final String image;
  final String title;
  final int liked;
  final int shared;
  final int comments;

  DataModel({
    required this.author,
    required this.createdDate,
    required this.image,
    required this.title,
    required this.liked,
    required this.shared,
    required this.comments,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      author: json['author'],
      createdDate: json['createdDate'],
      image: json['image'],
      title: json['title'],
      liked: json['liked'],
      shared: json['shared'],
      comments: json['comments'],
    );
  }
}
