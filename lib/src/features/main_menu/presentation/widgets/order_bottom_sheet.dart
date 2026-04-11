import 'package:flutter/material.dart';

void showOrderDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: const Color(0xCC1B2937),
    builder: (_) => const OrderDialog(),
  );
}

class OrderDialog extends StatefulWidget {
  const OrderDialog({super.key});

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),

      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 🔹 TITLE
            const Center(
              child: Text(
                "Заказать в 1 клик",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 8),

            /// 🔹 SUBTITLE
            Center(
              child: Text(
                "Дрель-шуруповерт аккумуляторная MAKITA DF 347DWE14 B 1,5 А/Ч",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff2C333D),
                  fontWeight: FontWeight.w600
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// 🔹 NAME
            _label("Ваше имя "),
            const SizedBox(height: 6),
            SizedBox(height: 61,
              child: TextField(
                decoration: _inputStyle("Как к вам обращаться?"),
              ),
            ),

            const SizedBox(height: 12),

            /// 🔹 EMAIL
            _label("Email адрес "),
            const SizedBox(height: 6),
            TextField(
              decoration: _inputStyle("Ваш email"),
            ),

            const SizedBox(height: 12),

            /// 🔹 PHONE
            _label("Номер телефона "),
            const SizedBox(height: 6),
            TextField(
              decoration: _inputStyle("+7 (___) ___ __ __"),
            ),

            const SizedBox(height: 12),

            /// 🔹 CHECKBOX
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (v) {
                    setState(() {
                      isChecked = v!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      "Согласен с обработкой персональных данных "
                          "в соответствии с политикой конфиденциальности",
                      style: TextStyle(fontSize: 13,
                      color: Color(0xff696D70)),
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 12),

            /// 🔹 BUTTON
            SizedBox(
              height: 61,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF186FD4),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "КУПИТЬ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 🔹 LABEL
Widget _label(String text) {
  return RichText(
    text: TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      children: const [
        TextSpan(
          text: "*",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        TextSpan(
          text: ":",

        ),
      ],
    ),
  );
}

/// 🔹 INPUT STYLE
InputDecoration _inputStyle(String hint) {
  return InputDecoration(
    hintText: hint,

    /// 🔹 hint style
    hintStyle: const TextStyle(
      color: Color(0xFF9CA3AF),
      fontSize: 14,
    ),

    filled: true,
    fillColor: Colors.white,

    /// 🔥 FIGMA PADDING
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),

    /// 🔥 BORDER (FIGMA)
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7), // 🔥 aynan 7
      borderSide: const BorderSide(
        color: Color(0xFFEBEEF0),
        width: 1,
      ),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: const BorderSide(
        color: Color(0xFFEBEEF0),
        width: 1,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: const BorderSide(
        color: Color(0xFF186FD4),
        width: 1.5,
      ),
    ),
  );
}