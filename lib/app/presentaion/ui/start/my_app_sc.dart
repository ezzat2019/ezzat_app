import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: (_, __) {
        return MaterialApp.router(
          routerConfig: RouteManager.router,
          debugShowCheckedModeBanner: false,
          title: "Ezzat App",
          theme: ThemeManager.lightTheme,
        );
      },
    );
  }
}
