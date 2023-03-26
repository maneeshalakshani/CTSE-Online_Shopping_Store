import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/home-buttons.dart';

class AdminHomeView extends StatefulWidget {
  const AdminHomeView({Key? key}) : super(key: key);

  @override
  _AdminHomeViewState createState() => _AdminHomeViewState();
}

class _AdminHomeViewState extends State<AdminHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Admin Home",
                style: TextStyle(
                  color: APP_COLOR,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              HomeButton(
                title: "Categories Management",
                onPressed: () {
                  context.router.push(const ItemAppRoute());
                },
              ),
              HomeButton(
                title: "Item Management",
                onPressed: () {
                  context.router.push(const SalesItemsRoute());
                },
              ),
              HomeButton(
                title: "Add Outlets",
                onPressed: () {
                  context.router.push(const AddOutletsRoute());
                },
              ),
              HomeButton(
                title: "View Outlets",
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
