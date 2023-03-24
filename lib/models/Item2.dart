import 'package:cloud_firestore/cloud_firestore.dart';

class Item2 {
  late String name;
  late String description;
  late int price;

  late DocumentReference documentReference;

  Item2({required this.name, required this.description, required this.price});

  Item2.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    name = map["name"];
    description = map["description"];
    price = map["price"];
  }

  Item2.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {'name': name, 'description': description, 'price': price};
  }
}
