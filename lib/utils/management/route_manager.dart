import 'package:flutter/material.dart';
import 'package:ronaldo_template/app/view/animal_view.dart';
import 'package:ronaldo_template/app/view/home_view.dart';

class RouteManager {
  static final Map<String, Widget Function(BuildContext)> routes = {
    "/": (context) => const HomeView(),
    "/animal": (context) => const AnimalView()
  };

  static Route<dynamic>? generateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: routes[settings.name]!);
}
