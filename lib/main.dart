import 'package:flutter/material.dart';
import 'package:getx/constants/constants.dart';
import 'package:get/get.dart';

// test commit

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: "/",
      getPages: AppRoutes.routes,
    );
  }
}
