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
            CustomTitle(
              title: "About Us",
            )
          ],
        ),
      ),
    );
  }
}