import 'package:elevate_flutter_task/features/ProductsCatalog/presentation/pages/ProductsCatalogScreen.dart';
import 'package:elevate_flutter_task/core/routes_manager/route_generator.dart';
import 'package:elevate_flutter_task/core/routes_manager/routes.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'core/remote/api_manager.dart';
import 'core/resources/theme_manager.dart';
import 'features/ProductsCatalog/data/data_sources/DataSource_impl/productsDaoApi_impl.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      debugShowCheckedModeBanner: false,
      locale: const Locale("en"),
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: ThemeMode.light,
      title: 'Flutter Template',
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.productsCatalogScreenRoute,
    );
  }
}
