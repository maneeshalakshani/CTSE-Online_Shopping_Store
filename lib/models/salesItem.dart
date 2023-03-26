import 'package:cloud_firestore/cloud_firestore.dart';

class SalesItem {

  late String itemName;
  late String description;
  late String price;

  late DocumentReference documentReference;

  SalesItem({required this.itemName, required this.description, required this.price});

  SalesItem.fromMap(Map<String, dynamic> map, {required this.documentReference}){
    itemName = map["itemName"];
    description = map["description"];
    price = map["price"];
  }

  SalesItem.fromSnapshot(DocumentSnapshot snapshot)
      :this.fromMap(
      snapshot.data() as Map<String, dynamic>,
      documentReference: snapshot.reference
  );

  toJson(){
    return {'itemName': itemName, 'description': description, 'price': price};
  }

}