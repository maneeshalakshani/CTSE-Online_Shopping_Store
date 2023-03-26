import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/title.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              child: Image.asset("assets/bg.jpg")
            ),
            CustomTitle(
              title: "Terms & Conditions",
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Term 01",
                    style: TextStyle(
                      fontSize: 20,
                      color: APP_COLOR,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Welcome to www.BuyAbans.com, the online purchasing platform for Abans PLC (Sri Lanka). The BuyAbans.com website provides services to its valued customers subject to the following conditions. Please read and accept the under mentioned conditions and guidelines carefully before you use the services of this website.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Term 02",
                    style: TextStyle(
                      fontSize: 20,
                      color: APP_COLOR,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Welcome to www.BuyAbans.com, the online purchasing platform for Abans PLC (Sri Lanka). The BuyAbans.com website provides services to its valued customers subject to the following conditions. Please read and accept the under mentioned conditions and guidelines carefully before you use the services of this website.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Term 03",
                    style: TextStyle(
                      fontSize: 20,
                      color: APP_COLOR,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Welcome to www.BuyAbans.com, the online purchasing platform for Abans PLC (Sri Lanka). The BuyAbans.com website provides services to its valued customers subject to the following conditions. Please read and accept the under mentioned conditions and guidelines carefully before you use the services of this website.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}