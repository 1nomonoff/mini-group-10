import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInput extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final bool obscure;
  final VoidCallback? onToggle;
  final String? errorText;

  const AppInput({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.isPassword = false,
    this.obscure = false,
    this.onToggle,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        RichText(
          text: TextSpan(
            text: title,
            style: GoogleFonts.inter(
              color: Color(0xff011120),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: ':',
                style: TextStyle(color: Color(0xff011120)),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        /// 🔥 INPUT
        SizedBox(
          height: 61,
          child: TextField(
            controller: controller,
            obscureText: isPassword ? obscure : false,
            decoration: InputDecoration(
              hintText: hint,

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical:10
              ),

              filled: true,
              fillColor: const Color(0xffffffff),


              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(color: Color(0xffD0D5DD)),
              ),

              /// focus border
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(color: Colors.blue, width: 1),
              ),

              /// error
              errorText: errorText,

              /// password icon
              suffixIcon: isPassword
                  ? IconButton(
                icon: Icon(
                  obscure
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: onToggle,
              )
                  : null,
            ),
          ),
        ),

        const SizedBox(height: 14),
      ],
    );
  }
}