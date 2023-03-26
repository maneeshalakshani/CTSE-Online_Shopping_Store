import 'package:flutter/material.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/title.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/bg.jpg")
            ),
            CustomTitle(
              title: "About Us",
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Our virtual store boasts an endless array of globally recognizable brands and includes only authentic products. We guarantee that our discounts are genuine, and your payments are secured. Our delivery teams cover the entirety of Sri Lanka, and our friendly staff are always ready to provide you aftersales support from our extensive network of over a hundred My Brand service centres.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}