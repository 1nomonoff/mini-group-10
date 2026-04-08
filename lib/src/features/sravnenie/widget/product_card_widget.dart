
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String image;

  const ProductCardWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.delete_outline,
            color: Colors.grey,
            size: 20,
          ),
        ),
        Center(
          child: Image.asset(
            image,
            height: 90,
          ),
        ),
         SizedBox(height: 10),
         Text(
          "Перфоратор\nуниверсальный Wande...",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
         SizedBox(height: 6),
         Text(
          "15 700 ₽",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
            decoration: TextDecoration.lineThrough,
          ),
        ),
       SizedBox(height: 4),
        Row(
          children: [
             Text(
              "12 789 ₽",
              style: TextStyle(
                color: Color(0xff0077CC),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
             SizedBox(width: 5),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(4),
              ),
              child:  Text(
                "-18%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
         SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 34,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1976D2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            child:  Text(
              "Купить",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}