import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavItemWidget extends StatelessWidget {
  final String title;
  final bool active;

  const NavItemWidget({super.key, required this.title, required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: !active ? ColorManager.gray : Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          20.verticalSpace,
          if (active)
            Container(
              height: 2.w,
              width: title.length * 8,
              color: ColorManager.SECONDARY,
            ),
        ],
      ),
    );
  }
}
