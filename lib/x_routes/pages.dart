import 'package:get/get.dart';
import 'package:ints/views/home/home_binding.dart';
import 'package:ints/views/portfolio/portfolio_binding.dart';
import 'package:ints/views/portfolio/portfolio_screen.dart';
import 'package:ints/views/test/test_binding.dart';

import '../views/home/home_screen.dart';
import '../views/test/test_screen.dart';
import 'router_name.dart';

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
          name: RouterName.main_home,
          page: () => HomeScreen(),
          binding: HomeBinding()),
      GetPage(
          name: RouterName.test,
          page: () => TestScreen(),
          binding: TestBinding()),
      GetPage(
          name: RouterName.portfolio,
          page: () => PortfolioScreen(),
          binding: PortfolioBinding()),
    ];
  }
}
