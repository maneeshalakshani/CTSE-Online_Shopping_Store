import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/home-buttons.dart';
import 'package:shopping_store/widgets/title.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: CustomTitle(title: "User Home")
              ),
              Container(
                margin: EdgeInsets.fromLTRB(90, 20, 90, 20),
                child: Image.asset("assets/aa.jpg")
              ),
              HomeButton(
                title: "View Items",
                onPressed: () {
                  context.router.push(const ItemListRoute());
                },
              ),
              HomeButton(
                title: "Delivery Management",
                onPressed: () {
                  context.router.push(const DeliveryRoute());
                },
              ),
              HomeButton(
                title: "Cart",
                onPressed: () {
                  context.router.push(const ItemListRoute());
                },
              ),
              HomeButton(
                title: "See Our Outlets",
                onPressed: () {
                  context.router.push(const AllOutletsRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
