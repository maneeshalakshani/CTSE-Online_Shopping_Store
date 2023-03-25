import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'models/delivery.dart';

class DeliveryView extends StatefulWidget {
  const DeliveryView({super.key});

  @override
  State<DeliveryView> createState() => _DeliveryViewState();
}

class _DeliveryViewState extends State<DeliveryView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController deliveryAddressController = TextEditingController();
  TextEditingController deliveryMethodController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool isEditing = false;
  bool textFieldVisibility = false;
  String firestoreCollectionName = "deliveries";
  late Delivery currentDelivery;

  getAllDeliveries() {
    return FirebaseFirestore.instance
        .collection(firestoreCollectionName)
        .snapshots();
  }

  addDelivery() async {
    Delivery delivery = Delivery(
        name: nameController.text,
        deliveryAddress: deliveryAddressController.text,
        deliveryMethod: deliveryMethodController.text,
        phoneNumber: phoneNumberController.text);
    try {
      FirebaseFirestore.instance
          .runTransaction((Transaction transaction) async {
        await FirebaseFirestore.instance
            .collection(firestoreCollectionName)
            .doc()
            .set(delivery.toJson());
      });
    } catch (e) {
      print(e.toString());
    }
  }

  updateDelivery(Delivery delivery, String name, String deliveryAddress,
      String deliveryMethod, String phoneNumber) {
    FirebaseFirestore.instance.runTransaction((Transaction transaction) async {
      await transaction.update(delivery.documentReference, {
        'name': name,
        'deliveryAddress': deliveryAddress,
        'deliveryMethod': deliveryMethod,
        'phoneNumber': phoneNumber
      });
    });
  }

  updateIfEditing() {
    if (isEditing) {
      updateDelivery(
          currentDelivery,
          nameController.text,
          deliveryAddressController.text,
          deliveryMethodController.text,
          phoneNumberController.text);

      setState(() {
        isEditing = false;
      });
    }
  }

  deleteDelivery(Delivery delivery) {
    FirebaseFirestore.instance.runTransaction((Transaction transaction) async {
      await transaction.delete(delivery.documentReference);
    });
  }

  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getAllDeliveries(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }
        if (snapshot.hasData) {
          print("Dcument -> ${snapshot.data?.docs.length}");
          return buildList(context, snapshot.data?.docs);
        }
        // return const SizedBox();
        return Text("Loading...");
      },
    );
  }

//   Widget buildList(BuildContext context,List<DocumentSnapshot> snapshot){
//   return ListView(
//     children:snapshot.map((data) =>listItemBuild(context,data)).toList(),
//   );
// }

  Widget buildList(BuildContext context, List<DocumentSnapshot>? snapshot) {
    return ListView.builder(
      itemCount: snapshot!.length,
      itemBuilder: (context, index) {
        return listItemBuild(context, snapshot[index]);
      },
    );
  }

  Widget listItemBuild(BuildContext context, DocumentSnapshot data) {
    final delivery = Delivery.fromSnaphshot(data);

    return Padding(
      key: ValueKey(delivery.name),
      padding: EdgeInsets.symmetric(vertical: 19, horizontal: 1),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(4),
        ),
        child: SingleChildScrollView(
          child: ListTile(
            title: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(delivery.name),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text(delivery.deliveryAddress),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[Text(delivery.deliveryMethod)],
                ),
                Divider(),
                Row(
                  children: <Widget>[Text(delivery.deliveryMethod)],
                )
              ],
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    deleteDelivery(delivery);
                  },
                )
              ],
            ),
            onTap: () {
              setUpdateUI(delivery);
            },
          ),
        ),
      ),
    );
  }

  setUpdateUI(Delivery delivery) {
    nameController.text = delivery.name;
    deliveryAddressController.text = delivery.deliveryAddress;
    deliveryMethodController.text = delivery.deliveryMethod;
    phoneNumberController.text = delivery.phoneNumber;

    setState(() {
      textFieldVisibility:
      true;
      isEditing:
      true;
      currentDelivery:
      delivery;
    });
  }

  button() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          if (isEditing == true) {
            updateIfEditing();
          } else {
            addDelivery();
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
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Delivery"),
                IconButton(
                  onPressed: () {
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
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: "name",
                        ),
                      ),
                      TextFormField(
                        controller: deliveryAddressController,
                        decoration: const InputDecoration(
                          labelText: "delivryAddress",
                        ),
                      ),
                      TextFormField(
                        controller: deliveryMethodController,
                        decoration: const InputDecoration(
                          labelText: "deliveryMethod",
                        ),
                      ),
                      TextFormField(
                        controller: phoneNumberController,
                        decoration: const InputDecoration(
                          labelText: "phoneNumber",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: button(),
                      ),
                    ],
                  )
                : SizedBox(),
            Text("Delivery List"),
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
