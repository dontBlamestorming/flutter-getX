import 'package:flutter/material.dart';
import 'package:getx/controllers/controllers.dart';
import 'package:getx/ui/components/components.dart';
import 'package:get/get.dart';
// import 'package:flutter_starter/ui/ui.dart';

// commit test

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) => controller.firestoreUser.value!.uid == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                appBar: AppBar(
                  title: Text("home.title".tr),
                  actions: [
                    IconButton(
                      onPressed: () {
                        // Get.to(SettingUI());
                      },
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
                body: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 120),
                      Avatar(controller.firestoreUser.value!),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'home.uidLabel'.tr + ': ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'home.nameLabel'.tr + ': ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'home.emailLabel'.tr + ': ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'home.adminUserLabel'.tr + ': ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
  }
}
