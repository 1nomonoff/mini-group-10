  import 'package:flutter/material.dart';
  import '../widgets/custom_drawer.dart';
  import '../widgets/order_bottom_sheet.dart';
  import '../widgets/custom_app_bar.dart';

  class TestScreen extends StatelessWidget {
    const TestScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: CustomDrawer(
          onCallPressed: () {
            showOrderDialog(context);
          },
        ),

        drawerScrimColor: const Color(0xCC1B2937),

        appBar: CustomAppBar(
          onCallTap: () {
            showOrderDialog(context);
          },
        ),

        body: const Center(
          child: Text("Test UI"),
        ),
      );
    }
  }