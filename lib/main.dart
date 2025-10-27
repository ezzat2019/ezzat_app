import 'package:flutter/material.dart';

import 'app/presentaion/ui/start/app_initializer.dart';
import 'app/presentaion/ui/start/my_app_sc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInitializer.init();

  runApp(const MyApp());
}
