import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/functions/outletFunctions.dart';
import 'package:shopping_store/pages/see-outlets/OutletCard.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/title.dart';

class AllOutletsView extends StatefulWidget {
  const AllOutletsView({super.key});

  @override
  State<AllOutletsView> createState() => AllOutletsViewState();
}

class AllOutletsViewState extends State<AllOutletsView> {
  Widget buildList(BuildContext context, List<DocumentSnapshot>? snapshot) {
    return ListView.builder(
      itemCount: snapshot!.length,
      itemBuilder: (context, int index) {
        return OutletCard(context: context, data: snapshot[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: Column(
        children: [
          const CustomTitle(title: "Outlets"),
          Flexible(
            child: StreamBuilder<QuerySnapshot>(
              stream: OutletFunction().getAllOutlets(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                }
                if (snapshot.hasData) {
                  return buildList(context, snapshot.data?.docs);
                }
                return const Text("Loading...");
              },
            ),
          ),
        ],
      ),
    );
  }
}
