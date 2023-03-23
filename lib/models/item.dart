import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  late String name;
  late String description;
  late int price;

  late DocumentReference documentReference;

  Item({required this.name, required this.description, required this.price});

  Item.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    name = map["name"];
    description = map["description"];
    price = map["price"];
  }

  Item.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {'name': name, 'description': description, 'price': price};
  }
}
