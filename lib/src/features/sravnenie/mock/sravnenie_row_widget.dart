
import 'package:flutter/material.dart';

class SravnenieTableRowWidget extends StatelessWidget {
  final String title;
  final String value1;
  final String value2;

  const SravnenieTableRowWidget({
    super.key,
    required this.title,
    required this.value1,
    required this.value2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration:  BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xffEAEAEA)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              title,
              style:  TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value1,
                    style:  TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    value2,
                    style:  TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}