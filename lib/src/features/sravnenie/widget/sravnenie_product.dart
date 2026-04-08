
import 'package:flutter/material.dart';
import 'package:practice_app/src/features/sravnenie/widget/product_card_widget.dart';

class SravnenieProductSection extends StatelessWidget {
  const SravnenieProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Expanded(
            child: ProductCardWidget(
              image: 'assets/images/drel1.png',
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: ProductCardWidget(
              image: 'assets/images/drel2.png',
            ),
          ),
        ],
      ),
    );
  }
}