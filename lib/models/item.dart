import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  late String itemCategorieName;
  late String categorySection;

  late DocumentReference documentReference;

  Item({required this.itemCategorieName, required this.categorySection});

  Item.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    itemCategorieName = map['itemCategorieName'];
    categorySection = map['categorySection'];
  }

  Item.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {
      'itemCategorieName': itemCategorieName,
      'categorySection': categorySection
    };
  }
}