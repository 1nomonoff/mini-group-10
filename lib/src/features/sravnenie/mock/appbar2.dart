
import 'package:flutter/material.dart';

class SravnenieHeaderSection extends StatelessWidget {
  const SravnenieHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/logo 1.png",
              height: 26,
            ),
          ),
          SizedBox(
            height: 33,
            width: 35,
            child: Image.asset("assets/images/profile.png"),
          ),
           SizedBox(width: 6),
          SizedBox(
            height: 33,
            width: 35,
            child: Image.asset("assets/images/catalog.png"),
          ),
           SizedBox(width: 6),
          SizedBox(
            height: 33,
            width: 35,
            child: Image.asset("assets/images/like.png"),
          ),
           SizedBox(width: 6),
          SizedBox(
            height: 33,
            width: 35,
            child: Image.asset("assets/images/korzinka.png"),
          ),
        ],
      ),
    );
  }
}