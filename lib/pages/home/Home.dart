import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/home-buttons.dart';

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
              HomeButton(
                title: "Add Items",
                imageUrl: "assets/book.jpg",
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
              ),
              HomeButton(
                title: "Add Deliveries",
                imageUrl: "assets/delivery.png",
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
              ),
              HomeButton(
                title: "Cart",
                imageUrl: "assets/shop.png",
                onPressed: () {
                  context.router.push(const ItemListRoute());
                },
              ),
              HomeButton(
                title: "Add Categories",
                imageUrl: "assets/category.png",
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
              ),
              HomeButton(
                title: "See Our Outlets",
                imageUrl: "assets/shop.png",
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
