import 'package:flutter/material.dart';
import 'package:practice_app/src/features/korzina/model/product_model.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;

  const ProductItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        product.isHit
            ? Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffF5A623)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'ХИТ',
                  style: TextStyle(
                    color: Color(0xffF5A623),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : const SizedBox(height: 32),

        SizedBox(
          height: 120,
          width: 77,
          child: Center(child: Image.asset(product.image, fit: BoxFit.contain)),
        ),

         SizedBox(height: 10),

        Text(
          product.article,
          style:  TextStyle(
            fontSize: 14,
            color: Color(0xffA6A6A6),
            fontWeight: FontWeight.w400,
          ),
        ),

         SizedBox(height: 8),

        SizedBox(
          height: 64,
          child: Text(
            product.title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style:  TextStyle(
              fontSize: 18,
              height: 1.2,
              color: Color(0xff1F1F1F),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

         SizedBox(height: 8),

        SizedBox(
          height: 20,
          child: product.oldPrice.isNotEmpty
              ? Text(
                  product.oldPrice,
                  style:  TextStyle(
                    fontSize: 16,
                    color: Color(0xffB7B7B7),
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w400,
                  ),
                )
              :  SizedBox(),
        ),

         SizedBox(height: 4),

        Row(
          children: [
            Text(
              product.price,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff005BFF),
                fontWeight: FontWeight.w700,
              ),
            ),
             SizedBox(width: 8),
            product.discount.isNotEmpty
                ? Container(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color:  Color(0xff21A366),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      product.discount,
                      style:  TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                :  SizedBox(),
          ],
        ),

         SizedBox(height: 12),

        Row(
          children: [
            Expanded(
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xff1976E6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/cart_icon.png',
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xffE5E5E5)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/heart_icon.png',
                  height: 22,
                  width: 22,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xffE5E5E5)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/chart_icon.png',
                  height: 22,
                  width: 22,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
