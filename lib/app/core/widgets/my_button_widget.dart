import 'package:flutter/material.dart';

import '../utilts/color_manager.dart';

class MyBtnWidget extends StatelessWidget {
  const MyBtnWidget({
    super.key,
    required this.onTap,
    this.backgroundColor,
    required this.name,
    this.textColor,
    this.iconPrefix,
    this.borderColor,
    this.elevation,
    this.borderRadius,
    this.padding,
  });

  final VoidCallback onTap;
  final String name;
  final double? elevation;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final Widget? iconPrefix;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorManager.PRIMARY,
        elevation: elevation,
        padding: padding ?? EdgeInsets.symmetric(vertical: 13),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadiusGeometry.circular(6),
          side: borderColor != null
              ? BorderSide(color: borderColor!)
              : BorderSide.none,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPrefix != null) ...[iconPrefix!, SizedBox(width: 8,)],
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
