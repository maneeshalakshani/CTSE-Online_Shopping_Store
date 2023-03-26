import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/models/salesItem.dart';

class SalesItemsView extends StatelessWidget {
  const SalesItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SalesItemsViewPage(),
    );
  }
}

class SalesItemsViewPage extends StatefulWidget {
  const SalesItemsViewPage({Key? key}) : super(key: key);

  @override
  _SalesItemsViewPageState createState() => _SalesItemsViewPageState();
}

class _SalesItemsViewPageState extends State<SalesItemsViewPage> {

  TextEditingController itemNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  bool isEditing = false;
  bool textFieldVisibility = false;
  String fireStoreCollectionName = "SalesItemsView";
  late SalesItem currentSalesItem;

  getAllSalesItemsView() {
    return FirebaseFirestore.instance.collection(fireStoreCollectionName).snapshots();
  }

  addSalesItem() async {
    SalesItem salesItem = SalesItem(itemName: itemNameController.text, description: descriptionController.text, price: priceController.text);
    try{
      FirebaseFirestore.instance.runTransaction(
         (Transaction transaction) async {
            await FirebaseFirestore.instance.collection(fireStoreCollectionName).doc().set(salesItem.toJson());
         }
      );
    }catch(e){
      print(e.toString());
    }
  }

  updateSalesItem(SalesItem salesItem, String itemName, String description, String price){
    try{
      FirebaseFirestore.instance.runTransaction((transaction) async {
        await transaction.update(salesItem.documentReference, {'itemName': itemName, 'description': description, 'price': price});
      });
    }catch(e){
      print(e.toString());
    }
  }

  updateIfEditing(){
    if(isEditing){
      updateSalesItem(currentSalesItem, itemNameController.text, descriptionController.text, priceController.text);
      setState(() {
        isEditing = false;
      });
    }
  }

  deleteSalesItem(SalesItem salesItem){
    FirebaseFirestore.instance.runTransaction(
      (Transaction transaction) async {
        await transaction.delete(salesItem.documentReference);
      }
    );
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
        return buildList(context, snapshot.data?.docs);
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sales.itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(sales.description),
                    Text('Price RS.${sales.price}.00'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        deleteSalesItem(sales);
                      },
                      icon: Icon(Icons.delete, color: Colors.red,),
                    ),
                    IconButton(
                      onPressed: (){
                        setUpdateUI(sales);
                      },
                      icon: Icon(Icons.update, color: Colors.green,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  setUpdateUI(SalesItem salesItem){
    itemNameController.text = salesItem.itemName;
    descriptionController.text = salesItem.description;
    priceController.text = salesItem.price;
    setState(() {
      isEditing = true;
      textFieldVisibility = true;
      currentSalesItem = salesItem;
    });
  }

  button(){
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          if(isEditing == true){
            updateIfEditing();
          }else{
            addSalesItem();
          }
          setState(() {
            textFieldVisibility = false;
          });
        },
        child: Text(isEditing ? "Update" : "Add"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Sales Items"),
                IconButton(
                  onPressed: (){
                    setState(() {
                      textFieldVisibility = !textFieldVisibility;
                    });
                  },
                  icon: const Icon(Icons.add, color: Colors.red),
                )
              ],
            ),
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
                        child: button(),
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