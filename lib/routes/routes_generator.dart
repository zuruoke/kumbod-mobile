// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:kumbod/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;
    final String? pathName = settings.name;
    final Routes route = Routes(pathName: pathName.toString(), args: args);
    final Widget _widget = route.getRouteWidget();
    return MaterialPageRoute(builder: (context) => _widget);
  }
}
