import 'package:flutter/material.dart';
import 'package:practice_app/src/features/izbraniy/screens/izbraniy_screen.dart';
import 'package:practice_app/src/features/korzina/screens/korzina_screen.dart';
import 'package:practice_app/src/features/sravnenie/mock/appbar2.dart';
import 'package:practice_app/src/features/sravnenie/mock/filtr_widget.dart';
import 'package:practice_app/src/features/sravnenie/mock/sravnenie_table_widget.dart';
import 'package:practice_app/src/features/sravnenie/widget/sravnenie_product.dart';

class SravnenieScreen extends StatefulWidget {
  const SravnenieScreen({super.key});

  @override
  State<SravnenieScreen> createState() => _SravnenieScreenState();
}

class _SravnenieScreenState extends State<SravnenieScreen> {
  bool onlyDifference = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset('assets/images/catalog.png'),
          ),
        ),
        centerTitle: true,
        title: const Text(
          '8 800 444 00 65',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IzbraniyScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset("assets/images/actions_logo.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            SravnenieHeaderSection(),

            SizedBox(height: 10),

            SravnenieFilterSection(
              onlyDifference: onlyDifference,
              onChanged: (value) {
                setState(() {
                  onlyDifference = value;
                });
              },
            ),

            SizedBox(height: 10),

            SravnenieProductSection(),

            SizedBox(height: 10),

            SravnenieTableSection(),
          ],
        ),
      ),
    );
  }
}
