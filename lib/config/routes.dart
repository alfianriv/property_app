import 'package:property_app/page/HomePage.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
          name: '/home',
          builder: (context, args, params) {
            return HomePage();
          }),
    ]);
  }
}
