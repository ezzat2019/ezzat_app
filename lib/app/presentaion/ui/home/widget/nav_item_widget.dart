import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:flutter/material.dart';

class NavItemWidget extends StatelessWidget {
  final String title;
  final bool active;
  final VoidCallback? onTap;

  const NavItemWidget({
    super.key,
    required this.title,
    required this.active,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: TextStyle(
                color: active ? Colors.white : Colors.grey,
                fontWeight: active ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 8,),
        if (active)
          Container(
            height: 2,
            width: title.length * 8,
            color: ColorManager.SECONDARY,
          ),
      ],
    );
  }
}

