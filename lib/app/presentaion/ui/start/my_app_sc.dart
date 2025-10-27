import 'package:flutter/material.dart';
import '../../../core/utilts/route_manager.dart';
import '../../../core/utilts/theme_manger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: RouteManager.router,
      debugShowCheckedModeBanner: false,
      title: "Ezzat App",
      theme: ThemeManager.lightTheme,
    );
  }
}
