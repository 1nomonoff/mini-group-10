import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/images/app_images.dart';
import 'package:practice_app/core/router/CheckoutPage.dart';
import 'package:practice_app/core/router/OderTwo.dart';
import 'package:practice_app/core/router/OrderSuccessPage.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int selectedOption = 0;
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Оформление заказа",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        actions: [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart_outlined, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Доставка",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              SizedBox(height: 16),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFFC0C0C0),
                            width: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Самовывоз',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2C3E50),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'К вашему приезду заказ будет скомплектован и готов к выдаче.',
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color(0xFF6C757D),
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F9FA),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 16,
                                    color: Color(0xFFADB5BD),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'г. Черкесск, ул. Октябрьская, д. 301',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF495057),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF0F7FF), 
                  border: Border.all(
                    color: Color(0xFF2F80ED),
                    width: 2,
                  ), 
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF2F80ED),
                          width: 2,
                        ), 
                      ),
                      child: Center(
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xFF2F80ED), 
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Доставка магазина',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Если же вам нужна будет доставка к определенному времени, то укажите это в поле для комментариев к заказу.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.45,
                              color: Color(0xFF6C757D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => OrderTwo()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFFC0C0C0),
                            width: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'СДЭК',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2C3E50),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Доставка через сервис СДЭК до ПВЗ или курьером до двери.',
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.45,
                                color: Color(0xFF6C757D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 28),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(text: "Улица "),
                        TextSpan(
                          text: "*",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(text: ":"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Введите название вашей компании",
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(text: "Номер дома "),
                                  TextSpan(
                                    text: "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  TextSpan(text: ":"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),

                            TextField(
                              decoration: InputDecoration(
                                hintText: "Номер дома",
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 14,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Квартира:",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 8),

                            TextField(
                              decoration: InputDecoration(
                                hintText: "Номер квартиры",
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 14,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              Text(
                "Оплата",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              SizedBox(height: 12),

              RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                value: 0,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() => selectedOption = value!);
                },
                title: Text(
                  "Картой на сайте",
                  style: TextStyle(fontSize: 15, color: Color(0xFF2C3E50)),
                ),
                activeColor: Color(0xFF2F80ED),
              ),

              RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() => selectedOption = value!);
                },
                title: Text(
                  "Оплата в кассе",
                  style: TextStyle(fontSize: 15, color: Color(0xFF2C3E50)),
                ),
                activeColor: Color(0xFF2F80ED),
              ),

              RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() => selectedOption = value!);
                },
                title: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                      TextSpan(text: "Кредит от ОТП банка "),
                      TextSpan(
                        text: "Условия предоставления",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                activeColor: Color(0xFF2F80ED),
              ),

              RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                value: 3,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() => selectedOption = value!);
                },
                title: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                      TextSpan(
                        text:
                            "Покупай со Сбером (оформление покупки в кредит) ",
                      ),
                      TextSpan(
                        text: "Условия предоставления",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                activeColor: Color(0xFF2F80ED),
              ),

              SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F9FA),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFE9ECEF)),
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                      TextSpan(text: "Есть промокод? "),
                      TextSpan(
                        text: "Нажмите здесь, чтобы ввести его",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 28),
              
              Text(
                'Ваше имя *:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Как вас зовут",
                  hintStyle: TextStyle(color: Color(0xFFADB5BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),

              SizedBox(height: 16),

              Text(
                'Фамилия *:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Введите вашу фамилию",
                  hintStyle: TextStyle(color: Color(0xFFADB5BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),

              SizedBox(height: 16),

              Text(
                'Название компании *:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Введите название компании",
                  hintStyle: TextStyle(color: Color(0xFFADB5BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),

              SizedBox(height: 16),
              
              Text(
                'Номер телефона *:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "+7 (___) ___-__-__",
                  hintStyle: TextStyle(color: Color(0xFFADB5BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),

                SizedBox(height: 9),
               Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Создать аккаунт"),
                ],
              ),

              SizedBox(height: 9),

              
              Text(
                "Комментарий к заказу:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF8F9FA),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFE9ECEF)),
                ),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Текстовое поле",
                    hintStyle: TextStyle(color: Color(0xFFADB5BD)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),

              
              Text(
                "Ваш заказ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 14),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey[300],
                    child: Image.asset(AppImages.wander1450W),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Перфоратор универсальный Wander X645-46 GF 1450W",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Артикул: XJ8YHG0",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "7 899 ₽",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F80ED),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey[300],
                    child: Image.asset(AppImages.wander),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Перфоратор универсальный Wander X645-46 GF 1450W",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Артикул: XJ8YHG0",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "20 000 ₽",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F80ED),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey[300],
                    child: Image.asset(AppImages.redGF),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Перфоратор универсальный Wander X645-46 GF 1450W",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Артикул: XJ8YHG0",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "4 756 ₽",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F80ED),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey[300],
                    child: Image.asset(AppImages.wander),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Перфоратор универсальный Wander X645-46 GF 1450W",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Артикул: XJ8YHG0",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "20 000 ₽",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F80ED),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              
              _buildTotalRow("Сумма", "43 829 ₽"),
              SizedBox(height: 8),
              _buildTotalRow("Доставка", "0 ₽"),
              SizedBox(height: 12),
              _buildTotalRow("Итого", "43 829 ₽", isBold: true),

              SizedBox(height: 20),

              Row(
                children: [
                  Checkbox(
                    value: isChecked2,
                    onChanged: (value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Согласен с обработкой персональных данных в соответствии с политикой конфиденциальности",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2F80ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderSuccessPage()),
                    );
                  },
                  child: Text(
                    "Оформить заказ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTotalRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isBold ? 16 : 15,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
            color: isBold ? Color(0xFF1A1A1A) : Color(0xFF6C757D),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isBold ? 18 : 15,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
            color: isBold ? Color(0xFF2F80ED) : Color(0xFF2C3E50),
          ),
        ),
      ],
    );
  }
}
