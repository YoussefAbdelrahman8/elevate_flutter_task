import 'package:elevate_flutter_task/features/ProductsCatalog/presentation/pages/ProductsCatalogScreen.dart';
import 'package:elevate_flutter_task/core/routes_manager/routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.productsCatalogScreenRoute:
        return MaterialPageRoute(builder: (_) => const ProductsCatalogScreen());
    }
    return null;
  }
}
