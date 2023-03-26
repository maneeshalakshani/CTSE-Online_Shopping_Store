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
            CustomTitle(
              title: "Contact Us",
            )
          ],
        ),
      ),
    );
  }
}