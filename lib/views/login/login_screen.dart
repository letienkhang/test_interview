import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_interview/common/widgets/app_text_flied.dart';
import 'package:test_interview/common/widgets/button_widget.dart';
import 'package:test_interview/views/login/wigets/appbart.dart';

import '../../controllers/login_controller.dart';

class LoginSceen extends StatelessWidget {
  const LoginSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
      ),
      color: theme.colorScheme.onPrimary,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: buildAppbar(context: context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              //email text box
              appTextField(
                  context: context,
                  usernameController: controller.usernameController),
              const SizedBox(
                height: 20,
              ),
              //passs text box
              appTextField(
                  context: context,
                  iconData: Icons.lock,
                  hintText: 'Password',
                  labelText: 'Password',
                  helperText: '*******',
                  usernameController: controller.passwordController,
                  obscureText: true),
              const SizedBox(
                height: 16,
              ),

              SizedBox(
                height: 100.h,
              ),
              appButton(
                  context: context,
                  onPressed: () {
                    controller.login(controller.usernameController.text,
                        controller.passwordController.text);
                  },
                  name: 'submit'),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
