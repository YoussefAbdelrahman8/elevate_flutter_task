import 'package:elevate_flutter_task/UI/ProductsCatalogScreen/ProductsCatalogScreen.dart';
import 'package:flutter/material.dart';
import 'AppStyle/AppStyle.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
      locale: Locale("en"),
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: ThemeMode.light,
      title: 'Flutter Template',
      routes: {
        ProductsCatalogScreen.routeName: (_) => const ProductsCatalogScreen(),
      },
      initialRoute: ProductsCatalogScreen.routeName,
    );
  }
}
