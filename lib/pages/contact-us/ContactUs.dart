import 'package:flutter/material.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/title.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
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
              title: "Contact Us",
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
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Email: mybrand@gmail.com",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Phone: +94-2345-456-789",
                textAlign: TextAlign.start,
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