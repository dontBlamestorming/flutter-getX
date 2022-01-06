import 'package:get/get.dart';
import 'package:getx/ui/ui.dart';

class AppRoutes {
  AppRoutes._(); // 이 파일 외부로부터 생성자가 호출되는 것을 막는다. named private constructor

  static final routes = [
    GetPage(name: '/', page: () => HomeUI()),
    GetPage(name: '/signin', page: () => SplashUI()),
    GetPage(name: '/signup', page: () => SplashUI()),
    GetPage(name: '/home', page: () => HomeUI()),
  ];
}
