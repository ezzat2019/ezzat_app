import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utilts/get_it_manager.dart';

class AppInitializer {
  static Future<void> init() async {
    await ScreenUtil.ensureScreenSize();
    GetItManager.setup();
  }
}
