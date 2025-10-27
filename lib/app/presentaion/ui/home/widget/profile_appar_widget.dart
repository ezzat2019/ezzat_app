import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:flutter/material.dart';

class ProfileApparWidget extends StatelessWidget {
  const ProfileApparWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
        ),
    SizedBox(width: 12,),
        Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 25),
    SizedBox(width: 6,),
        Text(
          "John Doe",
          style: TextStyle(fontSize: 14, color: ColorManager.fontColor),
        ),
      ],
    );
  }
}
