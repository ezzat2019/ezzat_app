import 'package:ezzat_app/app/core/utilts/route_manager.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract class NavManager {
  static void _closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static goto(String path, {Map<String, String>? params, Object? extra}) {
    _closeKeyboard();
    navKey.currentContext?.push(path, extra: extra);
  }

  static back() {
    _closeKeyboard();
    if (navKey.currentContext!.canPop()) {
      navKey.currentContext!.pop();
    }
  }

  static gotoReplace(String path, {Object? extra}) {
    _closeKeyboard();
    navKey.currentContext?.pushReplacement(path, extra: extra);
  }

  static gotoEnd(String path, {Object? extra}) {
    _closeKeyboard();
    navKey.currentContext?.go(path, extra: extra);
  }
}
