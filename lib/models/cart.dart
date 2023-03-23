import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_store/models/cartItem.dart';

class Cart {
  late List<CartItem>? cartItemList;
  late String userID;

  late DocumentReference documentReference;

  Cart({required this.cartItemList, required this.userID});

  Cart.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    cartItemList = map["cartItemList"];
    userID = map["userID"];
  }

  Cart.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {'cartItemList': cartItemList, 'userID': userID};
  }
}
