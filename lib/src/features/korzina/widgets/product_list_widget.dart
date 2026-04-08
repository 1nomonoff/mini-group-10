import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/src/features/korzina/logic/korzinka_cubir.dart';
import 'package:practice_app/src/features/korzina/model/product_model.dart';

class ProductItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String article;

  const ProductItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.article, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 90,
              width: 90,
              child: Image.asset(image), 
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  article,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 10),

        Container(
          height: 43,
          width: 330,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, count) {
              return Row(
                children: [
                  Container(
                    height: 43,
                    width: 61,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F4F5),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: IconButton(
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
                      icon: Icon(Icons.remove),
                    ),
                  ),

                  SizedBox(width: 10),

                  Text(
                    "$count",
                    style: TextStyle(fontSize: 18),
                  ),

                  SizedBox(width: 10),

                  Container(
                    height: 43,
                    width: 61,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F4F5),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: IconButton(
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                      icon: Icon(Icons.add),
                    ),
                  ),

                  SizedBox(width: 32),

                  Column(
                    children: [
                      Text(
                        "7 899 ₽",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff003B73),
                        ),
                      ),
                      Text(
                        "7 899 ₽",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 47),

                  Image.asset(
                    'assets/images/delete.png',
                    height: 24,
                    width: 24,
                  )
                ],
              );
            },
          ),
          ),
        ),
      ],
    );
  }
}