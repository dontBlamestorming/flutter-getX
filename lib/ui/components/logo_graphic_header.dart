import 'package:flutter/material.dart';
import 'package:getx/controllers/controllers.dart';

class LogoGraphicHeader extends StatelessWidget {
  LogoGraphicHeader(); // ???????????????????????????????????????????????

  final ThemeController themeController = ThemeController.to;
  // getter -> Get.find()를 통해 뭔가를 가져오고 있음. 정확히 어떤 값을 가져오고 있는지는 파악 X

  @override
  Widget build(BuildContext context) {
    String _imageLogo = 'assets/images/default.png';

    if (themeController.isDarkModeOn == true) {
      _imageLogo = 'assets/images/defaultDark.png';
    }

    return Hero(
      tag: "App Logo",
      child: CircleAvatar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        radius: 60.0,
        child: ClipOval(
          child: Image.asset(
            _imageLogo,
            fit: BoxFit.cover,
            width: 120.0,
            height: 120.0,
          ),
        ),
      ),
    );
  }
}
