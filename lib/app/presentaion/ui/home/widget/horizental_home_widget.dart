import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:ezzat_app/app/core/utilts/path_manger.dart';
import 'package:ezzat_app/app/core/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
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
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: ColorManager.black2,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset("${PathManager.SVG_PATH}sliders.svg"),
          ),
          Container(
            width: 1,
            height: 46,
            color: ColorManager.border,
            margin: EdgeInsets.symmetric(horizontal: 12),
          ),
        ],
        MyBtnWidget(
          onTap: () {},
          name: "Add a New Item",
          backgroundColor: ColorManager.SECONDARY,
          borderRadius: BorderRadius.circular(100),
          elevation: 0,
          textColor: Colors.black,
          iconPrefix: SvgPicture.asset(
            "${PathManager.SVG_PATH}plus.svg",
            height: 16,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 24,
            vertical: isMobile ? 12 : 24,
          ),
        ),
      ],
    );
  }
}
