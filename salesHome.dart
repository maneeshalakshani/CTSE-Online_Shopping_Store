import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/home-buttons.dart';

class SalesHomeView extends StatefulWidget {
  const SalesHomeView({Key? key}) : super(key: key);

  @override
  _SalesHomeViewState createState() => _SalesHomeViewState();
}

class _SalesHomeViewState extends State<SalesHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeButton(
                title: "Item List",
                onPressed: () {
                  context.router.push(const SalesItemListRoute());
                },
              ),
              HomeButton(
                title: "Add Item",
                onPressed: () {
                  context.router.push(const SalesItemRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
