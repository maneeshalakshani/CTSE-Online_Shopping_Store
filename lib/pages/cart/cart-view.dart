import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/pages/cart/cart-item.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/normal-btn.dart';
import 'package:shopping_store/widgets/title.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double total = 11000;

    return Scaffold(
      appBar: appBarCustom(context),
      body: Container(
        width: width,
        height: height * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomTitle(
              title: "Cart",
              marginTop: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CartItem();
                },
              ),
            ),
            Container(
              height: height / 10,
              color: APP_COLOR,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Total: Rs.${total}/=",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  normalButon(title: "Continue")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
