import 'package:cloud_firestore/cloud_firestore.dart';

class CartItem {
  late String itemName;
  late int quantity;

  late DocumentReference documentReference;

  CartItem({required this.itemName, required this.quantity});

  CartItem.fromMap(Map<String, dynamic> map,
      {required this.documentReference}) {
    itemName = map["itemName"];
    quantity = map["quantity"];
  }

  CartItem.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {'itemName': itemName, 'quantity': quantity};
  }
}
