import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_text.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [



        /// TITLE
        const AppText(
          text: "Подпишитесь на рассылку",
          size: 18,
          weight: FontWeight.w600,
          align: TextAlign.center,
        ),

        const SizedBox(height: 8),

        /// DESCRIPTION
        const AppText(
          text:
          "Регулярные скидки и спецпредложения, а так же новости компании.",
          align: TextAlign.center,
          height: 1.4,
          color: Colors.grey,
        ),

        const SizedBox(height: 13),

        /// INPUT
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
          ),
        ),

        const SizedBox(height: 13),

        /// BUTTON
        AppButton(
          text: 'ПОДПИСАТЬСЯ',
          onTap: () {
            // keyin API
          },
        ),

        const SizedBox(height: 30),

        /// CHECKBOX
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.scale(
              scale: 1.4,
              child: Checkbox(
                value: false,
                side: const BorderSide(
                  color: Color(0xffDFE0E2),
                  width: 1,
                ),
                onChanged: (_) {},
              ),
            ),
            const SizedBox(width: 8),
            const Expanded(
              child: AppText(
                text:
                "Согласен с обработкой персональных данных в соответствии с политикой конфиденциальности",
                size: 13,
                height: 1.6,
                color: Color(0xff696D70),
              ),
            ),
          ],
        ),
      ],
    );
  }
}