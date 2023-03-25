import 'package:cloud_firestore/cloud_firestore.dart';

class Delivery {
  late String name;
  late String deliveryAddress;
  late String deliveryMethod;
  late String phoneNumber;

  late DocumentReference documentReference;

  Delivery(
      {required this.name,
      required this.deliveryAddress,
      required this.deliveryMethod,
      required this.phoneNumber});

  Delivery.fromMap(Map<String, dynamic> map,
      {required this.documentReference}) {
    name = map["name"];
    deliveryAddress = map["deliveryAddress"];
    deliveryMethod = map["deliveryMethod"];
    phoneNumber = map["phoneNumber"];
  }
  Delivery.fromSnaphshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {
      'name': name,
      'deliveryAddress': deliveryAddress,
      'deliveryMethod': deliveryMethod,
      'phoneNumber': phoneNumber
    };
  }
}
