import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:ezzat_app/app/core/utilts/path_manger.dart';
import 'package:ezzat_app/app/core/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizntalHomeWidget extends StatelessWidget {
  const HorizntalHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;
    return Row(
      children: [
        Text(
          'Items',
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 22 : 32,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        if (!isMobile) ...[
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: ColorManager.black2,
              borderRadius: BorderRadius.circular(100.r),
            ),
            padding: EdgeInsets.all(12.w),
            child: SvgPicture.asset("${PathManager.SVG_PATH}sliders.svg"),
          ),
          Container(
            width: 1.w,
            height: 46.w,
            color: ColorManager.border,
            margin: EdgeInsets.symmetric(horizontal: 12.w),
          ),
        ],
        MyBtnWidget(
          onTap: () {},
          name: "Add a New Item",
          backgroundColor: ColorManager.SECONDARY,
          borderRadius: BorderRadius.circular(100.r),
          elevation: 0,
          textColor: Colors.black,
          iconPrefix: SvgPicture.asset(
            "${PathManager.SVG_PATH}plus.svg",
            height: 16,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16.w : 24.w,
            vertical: isMobile ? 12.h : 24.h,
          ),
        ),
      ],
    );
  }
}
