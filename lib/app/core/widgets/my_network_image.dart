import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNetworkImage extends StatelessWidget {
  final String imgUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool? isBool;

  const MyNetworkImage({
    required this.imgUrl,
    this.width,
    this.borderRadius,
    this.height,
    this.isBool,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius == null ? 0 : borderRadius!.r,
      ),
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        width: width,
        height: height,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        placeholder: (context, url) => Container(
          width: width ?? 1.sw,
          height: height ?? 1.sh,
          color: Colors.grey.shade200,
        ),
        errorWidget: (context, url, error) => Container(
          width: width ?? 1.sw,
          height: height ?? 1.sh,
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}
