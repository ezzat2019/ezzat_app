import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileApparWidget extends StatelessWidget {
  const ProfileApparWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32.w,
          height: 32.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: Colors.white,
          ),
        ),
        12.horizontalSpace,
        Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 25.r),
        6.horizontalSpace,
        Text(
          "John Doe",
          style: TextStyle(fontSize: 14, color: ColorManager.fontColor),
        ),
      ],
    );
  }
}
