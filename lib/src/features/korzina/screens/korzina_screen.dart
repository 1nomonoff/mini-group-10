import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/src/features/korzina/logic/korzinka_cubir.dart';
import 'package:practice_app/src/features/korzina/model/product_model.dart';
import 'package:practice_app/src/features/korzina/widgets/product_list_widget.dart';
import 'package:practice_app/src/features/sravnenie/screens/sravnenie_screen.dart';

class KorzinaScreen extends StatefulWidget {
  const KorzinaScreen({super.key});

  @override
  State<KorzinaScreen> createState() => _KorzinaScreenState();
}

class _KorzinaScreenState extends State<KorzinaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Image.asset('assets/images/catalog.png'),
        ),
        centerTitle: true,
        title: Text('8 800 444 00 65'),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset("assets/images/actions_logo.png"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(thickness: 1),
                  Image.asset("assets/images/logo 1.png"),
                  SizedBox(width: 21),
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
                  SizedBox(width: 6),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 46,
                    width: 134,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 4),
                        SizedBox(
                          height: 6,
                          width: 18,
                          child: Image.asset("assets/images/menu2.png"),
                        ),
                        SizedBox(width: 3),
                        Text("Katalog", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 46,
                    width: 186,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                    ),
                    child: Row(
                      spacing: 10,
                      children: [
                        SizedBox(width: 3),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "Поиск...",
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Image.asset("assets/images/search.png"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(thickness: 1),
              SizedBox(height: 12),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SravnenieScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Стройоптторг",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                  Text(" /", style: TextStyle(color: Colors.grey)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      " Корзина товаров",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Корзина товаров",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 206,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEDF0F2),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 35),
                          Text(
                            "Ваша скидка от суммы заказа:",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "0 ₽",
                            style: TextStyle(color: Color(0xff003B73)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 33,
                        width: 280,
                        child: Image.asset("assets/images/proccent.png"),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Добавьте в корзину товаров на",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "3 433 ₽",
                            style: TextStyle(color: Color(0xff003B73)),
                          ),
                          SizedBox(width: 2),
                          Text('и '),
                        ],
                      ),
                      Text(
                        "и получите скидку 7%",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 41,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0xffF6F8FB),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "О скидках от суммы корзины",
                              style: TextStyle(color: Color(0xff117FE3)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: 176,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/images/drel1.png'),
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Перфоратор универсальный\n Wander X645-46 GF 1450W",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Артикул: XJ89YHGO",
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
                                        color: const Color(0xffF3F4F5),
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<CounterCubit>()
                                              .decrement();
                                        },
                                        icon: const Icon(Icons.remove),
                                      ),
                                    ),

                                    const SizedBox(width: 10),

                                    Text(
                                      "$count",
                                      style: const TextStyle(fontSize: 18),
                                    ),

                                    const SizedBox(width: 10),

                                    Container(
                                      height: 43,
                                      width: 61,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF3F4F5),
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<CounterCubit>()
                                              .increment();
                                        },
                                        icon: const Icon(Icons.add),
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
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 47),
                                    Image.asset(
                                      'assets/images/delete.png',
                                      height: 24,
                                      width: 24,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    ),
                  ),
                  ProductItemWidget(
                    image: 'assets/images/drel2.png',
                    title: "Перфоратор универсальный\n Wander X645-46 GF 1450W",
                    article: "Артикул: XJ89YHGO", 
                  ),
                  Divider(thickness: 1),
                  ProductItemWidget(
                    image: 'assets/images/drel3.png',
                    title: "Перфоратор универсальный\n Wander X645-46 GF 1450W",
                    article: "Артикул: XJ89YHGO",
                    
                  ),
                  Divider(thickness: 1),
                  ProductItemWidget(
                    image: 'assets/images/drel4.png',
                    title: "Перфоратор универсальный\n Wander X645-46 GF 1450W",
                    article: "Артикул: XJ89YHGO",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Итого",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Скидка по промокоду",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("0 ₽", style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    Divider(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Скидка от суммы заказа",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("0 ₽", style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    Divider(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Сумма",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "36 829 ₽",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff003B73),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Промокод",
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Применить промокод",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2F6FED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "ПЕРЕЙТИ К ОФОРМЛЕНИЮ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
