import 'package:cloud_firestore/cloud_firestore.dart';

class ItemList {
  String fireStoreCollectionName = "items";

  getAllItems() {
    return FirebaseFirestore.instance
        .collection(fireStoreCollectionName)
        .snapshots();
  }
}
