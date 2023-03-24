import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/functions/cart/itemListFunctions.dart';
import 'package:shopping_store/models/Item2.dart';
import 'package:shopping_store/pages/cart/item-list/item_card.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';

class ItemListView extends StatefulWidget {
  const ItemListView({super.key});

  @override
  State<ItemListView> createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  Widget buildList(BuildContext context, List<DocumentSnapshot>? snapshot) {
    return ListView.builder(
      itemCount: snapshot!.length,
      itemBuilder: (context, int index) {
        return ItemCard(context: context, data: snapshot[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            const Text(
              "List View",
            ),
            Flexible(
              child: StreamBuilder<QuerySnapshot>(
                stream: ItemList().getAllItems(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error ${snapshot.error}');
                  }
                  if (snapshot.hasData) {
                    return buildList(context, snapshot.data?.docs);
                  }
                  return const Text("Loading...");
                  // return buildList(context, snapshot.data?.docs);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
