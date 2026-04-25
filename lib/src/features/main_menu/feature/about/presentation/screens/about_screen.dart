import 'package:flutter/material.dart';
import 'package:practice_app/src/features/main_menu/feature/about/presentation/fake_mock_forabout/mock_s.dart';

import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../core/widgets/home_header.dart';
import '../../../../../../core/widgets/order_bottom_sheet.dart';
import '../widgets/about_text_section.dart';
import '../widgets/history_section.dart';
import '../widgets/news_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/why_us_section.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onCallTap: () => showOrderDialog(context),
      ),
      drawer: CustomDrawer(
        onCallPressed: () => showOrderDialog(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),

            /// CONTENT
            const AboutTextSection(text: aboutMock,),

            Image.asset(
              "assets/images/tools.png",
              width: double.infinity,
              fit: BoxFit.cover,
              height: 282,

            ),

            const WhyUsSection(),
            const HistorySection(),
            const StatsSection(),
            const NewsSection(),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}