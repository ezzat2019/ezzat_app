import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final bool active;

  const DrawerItemWidget({
    super.key,
    required this.title,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: active ? ColorManager.SECONDARY : Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
