import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;

  /// 🔥 yangi parametrlar
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? align;
  final double? height;
  final double? letterSpacing;

  const AppText({
    super.key,
    required this.text,
    this.size,
    this.weight,
    this.color,
    this.maxLines,
    this.overflow,
    this.align,
    this.height,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.inter(
        fontSize: size ?? 14,
        fontWeight: weight ?? FontWeight.w400,
        color: color ?? const Color(0xff011120),

        /// 🔥 yangi qo‘shildi
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}