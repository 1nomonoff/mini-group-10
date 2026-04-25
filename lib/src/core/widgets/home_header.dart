
import 'package:flutter/material.dart';
import 'package:practice_app/src/core/const/app_colors.dart';
import 'package:practice_app/src/core/widgets/app_icon.dart';
import 'package:practice_app/src/core/widgets/app_text.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Divider(height: 1,color: Color(0xffEBEEF0),),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              /// LOGO + ICONS
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo1.png",
                      height: 40,
                      width: 159,
                      fit: BoxFit.contain,
                    ),
                    AppIcon(icon: 'user'),
                    AppIcon(icon: 'graph',width: 13,height: 18,),

                    Stack(
                      children: [
                        AppIcon(icon: "like", width: 20,height: 17,),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                            child: const AppText(
                              text: "3",
                              size: 8,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),


                    Stack(
                      children: [
                        AppIcon(icon: 'cart',width: 15,height: 21,),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                            child: const AppText(
                              text: "3",
                              size: 8,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// SEARCH
              Row(
                children: [
                  /// KATALOG
                  Container(
                    height: 46,
                    padding: const EdgeInsets.symmetric(horizontal: 15,),
                    decoration: BoxDecoration(
                      color: Color(0xff186FD4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppIcon(
                          icon: 'equal',
                          color: Colors.white,
                          width: 18,
                          height: 7,
                        ),
                        const SizedBox(width: 10),
                        const AppText(
                          text: "КАТАЛОГ",
                          color: Colors.white,
                          weight: FontWeight.w700,
                          size: 12,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10),

                  /// SEARCH
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff186FD4),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Row(
                        children: [
                          /// 🔍 TEXT FIELD
                          Expanded(
                            child: Container(
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffF3F4F6),
                                borderRadius: BorderRadius.circular(12

                                ),
                                border: Border.all(
                                  color: Color(0xff186FD4),
                                  width: 2,
                                ),
                              ),
                              child:  TextField(
                                decoration: InputDecoration(
                                  hintText: "Поиск...",
                                  hintStyle: TextStyle(color:AppColor.lightGrey2),
                                  border: InputBorder.none,
                                  fillColor: AppColor.white,
                                ),
                              ),
                            ),
                          ),

                          /// 🔵 SEARCH BUTTON
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                            child: Center(
                              child: AppIcon(
                                icon: 'search',
                                color: Colors.white,
                                width: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),


            ],
          ),
        ),
        SizedBox(height: 17,),

        Divider(height: 1,color: Color(0xffEBEEF0),)
      ],
    );
  }
}