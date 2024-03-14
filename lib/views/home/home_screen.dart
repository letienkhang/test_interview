import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_interview/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              controller.logout();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Obx(() => controller.isLoggedIn.isTrue
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(controller.userAvatar.value),
                      ),
                      SizedBox(width: 8),
                      Text(
                        controller.userName.value,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.dataList.length, // Số lượng card
                      itemBuilder: (context, index) {
                        DataModel data = controller.dataList[index];
                        return Card(
                            child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(data.image),
                          ),
                          title: Text(data.title),
                          subtitle: Text(data.author),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Liked: ${data.liked}'),
                              Text('Shared: ${data.shared}'),
                              Text('Comments: ${data.comments}'),
                            ],
                          ),
                        ));
                      },
                    ),
                  )
                ],
              )
            : const SizedBox()),
      ),
    );
  }
}
