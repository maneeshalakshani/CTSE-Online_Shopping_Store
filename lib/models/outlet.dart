import 'package:cloud_firestore/cloud_firestore.dart';

class Outlet {
  late String location;
  late String coordinate1;
  late String coordinate2;

  late DocumentReference documentReference;

  Outlet(
      {required this.location,
      required this.coordinate1,
      required this.coordinate2});

  Outlet.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    location = map["location"];
    coordinate1 = map["coordinate1"];
    coordinate2 = map["coordinate2"];
  }

  Outlet.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            documentReference: snapshot.reference);

  toJson() {
    return {
      'location': location,
      'coordinate1': coordinate1,
      'coordinate2': coordinate2
    };
  }
}
