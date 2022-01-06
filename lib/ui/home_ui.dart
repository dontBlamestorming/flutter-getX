import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home.title".tr),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text("AH"),
            ),
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
    );
  }
}
