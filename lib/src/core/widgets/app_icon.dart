import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  final String icon;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;

  const AppIcon({
    super.key,
    required this.icon,
    this.size,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final w = width ?? size ?? 20;
    final h = height ?? size ?? 20;

    return SvgPicture.asset(
      'assets/icons/$icon.svg',
      width: w,
      height: h,
      colorFilter: ColorFilter.mode(
        color ?? const Color(0xff011120),
        BlendMode.srcIn,
      ),
    );
  }
}