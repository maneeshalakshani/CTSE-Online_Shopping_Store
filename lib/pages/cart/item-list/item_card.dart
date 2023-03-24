import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/models/Item2.dart';
import 'package:shopping_store/routes/routes.gr.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key, required this.context, required this.data});

  final BuildContext context;
  final DocumentSnapshot data;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final item = Item2.fromSnapshot(widget.data);

    return Container(
      width: width,
      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    color: APP_COLOR,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  item.description,
                  style: TextStyle(
                    color: DESCRIPTION_COLOR,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  "RS. ${item.price}/=",
                  style: TextStyle(
                    color: DESCRIPTION_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                context.router.push(const CartRoute());
              },
              icon: const Icon(
                Icons.add,
                color: APP_COLOR,
              ),
            ),
          )
        ],
      ),
    );
  }
}
