import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/models/salesItem.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';

class SalesItemListView extends StatefulWidget {
  const SalesItemListView({Key? key}) : super(key: key);

  @override
  _SalesItemListViewState createState() => _SalesItemListViewState();
}

class _SalesItemListViewState extends State<SalesItemListView> {

  TextEditingController itemNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  bool isEditing = false;
  bool textFieldVisibility = false;
    late SalesItem currentSalesItem;
  String fireStoreCollectionName = "SalesItemsView";


  getAllSalesItemsView() {
    return FirebaseFirestore.instance.collection(fireStoreCollectionName).snapshots();
  }

  Widget buildBody(BuildContext context){
    return StreamBuilder<QuerySnapshot>(
      stream: getAllSalesItemsView(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text('Error ${snapshot.error}');
        }
        if(snapshot.hasData){
          print("Dcument -> ${snapshot.data?.docs.length}");
          return buildList(context, snapshot.data?.docs);
        }
        // return const SizedBox();
        return const Text("Page Loading...");
      },
    );
  }

  Widget buildList(BuildContext context, List<DocumentSnapshot>? snapshot){
    return ListView.builder(
      itemCount: snapshot!.length,
      itemBuilder: (context, index){
        return listItemBuilder(context, snapshot[index]);
      },
    );
  }



  Widget listItemBuilder(BuildContext context, DocumentSnapshot data){
    final sales = SalesItem.fromSnapshot(data);
    return Padding(
      key: ValueKey(sales.itemName),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sales.itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(sales.description),
                    Text('Price RS.${sales.price}.00'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text("Sales Items"),
            //     IconButton(
            //       onPressed: (){
            //         setState(() {
            //           textFieldVisibility = !textFieldVisibility;
            //         });
            //       },
            //       icon: const Icon(Icons.add, color: Colors.red),
            //     )
            //   ],
            // ),
            textFieldVisibility
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: itemNameController,
                        decoration: const InputDecoration(
                          labelText: "Item Name",
                        ),
                      ),
                      TextFormField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          labelText: "Item Description",
                        ),
                      ),
                      TextFormField(
                        controller: priceController,
                        decoration: const InputDecoration(
                          labelText: "Item Price",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                      ),
                    ],
                  )
                : SizedBox(),
            Text("Sales Item List"),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: buildBody(context),
            ),
          ],
        ),
      ),
    );
  }
}