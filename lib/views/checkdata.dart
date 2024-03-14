import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
