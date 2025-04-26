import 'package:agri_connect/pages/home.dart';
import 'package:agri_connect/pages/splash.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainRoute extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const Splash());
    r.child('/home', child: (_) => const Home());
  }
}
