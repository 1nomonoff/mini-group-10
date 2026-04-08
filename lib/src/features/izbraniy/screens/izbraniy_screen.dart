import 'package:flutter/material.dart';

class IzbraniyScreen extends StatefulWidget {
  const IzbraniyScreen({super.key});

  @override
  State<IzbraniyScreen> createState() => _IzbraniyScreenState();
}

class _IzbraniyScreenState extends State<IzbraniyScreen> {
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
        title:  Text('8 800 444 00 65'),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset("assets/images/actions_logo.png"),
          ),
        ],
      ),

      /// 🔥 BODY
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

             SizedBox(height: 30),

            /// TOP MENU (sening kod)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo 1.png"),
                 SizedBox(width: 21),

                Image.asset("assets/images/profile.png", height: 33, width: 35),
                 SizedBox(width: 6),

                Image.asset("assets/images/catalog.png", height: 33, width: 35),
                 SizedBox(width: 6),

                Image.asset("assets/images/like.png", height: 33, width: 35),
                 SizedBox(width: 6),

                Image.asset("assets/images/korzinka.png", height: 33, width: 35),
              ],
            ),

             SizedBox(height: 20),

             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Избранные товары",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

             SizedBox(height: 16),

          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F4F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Категория"),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),

                     SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff156FE8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child:  Text(
                          "ДОБАВИТЬ ВСЕ В КОРЗИНУ",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),

                     SizedBox(height: 10),

                    Container(
                      height: 42,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F4F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Очистить список",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),

             SizedBox(height: 20),

 
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 12,
                runSpacing: 20,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: (MediaQuery.of(context).size.width - 44) / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                     
                        Stack(
                          children: [
                            Container(
                              height: 110,
                              alignment: Alignment.center,
                              child: Image.asset("assets/images/drel1.png"),
                            ),

                            Positioned(
                              top: 5,
                              left: 5,
                              child: Container(
                                padding:  EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child:  Text(
                                  "ХИТ",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                         SizedBox(height: 6),

                         Text(
                          "Артикул: XJ89YHGO",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),

                         SizedBox(height: 4),

                         Text(
                          "Перфоратор универсальный...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                         SizedBox(height: 6),

                         Text(
                          "16 899 ₽",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),

                         SizedBox(height: 2),

                        Row(
                          children: [
                             Text(
                              "12 789 ₽",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                             SizedBox(width: 6),
                            Container(
                              padding:  EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child:  Text(
                                "-15%",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),

                         SizedBox(height: 10),

                        Row(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:  Icon(Icons.shopping_cart,
                                  color: Colors.white, size: 18),
                            ),
                             SizedBox(width: 6),
                            Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:  Icon(Icons.favorite_border, size: 18),
                            ),
                             SizedBox(width: 6),
                            Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:  Icon(Icons.bar_chart, size: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

             SizedBox(height: 80),
          ],
        ),
      ),

      
    );
  }
}