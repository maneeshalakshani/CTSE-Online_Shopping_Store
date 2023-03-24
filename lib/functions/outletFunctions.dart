import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_store/models/outlet.dart';
import 'package:url_launcher/url_launcher.dart';

class OutletFunction {
  String fireStoreCollectionName = "outlets";

  getAllOutlets() {
    return FirebaseFirestore.instance
        .collection(fireStoreCollectionName)
        .snapshots();
  }

  createOutlet(
      {required String location,
      required String coordinate1,
      required String coordinate2}) async {
    Outlet outlet = Outlet(
        location: location, coordinate1: coordinate1, coordinate2: coordinate2);
    try {
      FirebaseFirestore.instance
          .runTransaction((Transaction transaction) async {
        await FirebaseFirestore.instance
            .collection(fireStoreCollectionName)
            .doc()
            .set(outlet.toJson());
      });
    } catch (e) {
      print(e.toString());
    }
  }

  updateOutlet({
    required Outlet outlet,
    required String location,
    required String coordinate1,
    required String coordinate2,
  }) {
    try {
      FirebaseFirestore.instance.runTransaction((transaction) async {
        await transaction.update(outlet.documentReference, {
          'location': location,
          'coordinate1': coordinate1,
          'coordinate2': coordinate2
        });
      });
    } catch (e) {
      print(e.toString());
    }
  }

  deleteOutlet({required Outlet outlet}) {
    FirebaseFirestore.instance.runTransaction((Transaction transaction) async {
      await transaction.delete(outlet.documentReference);
    });
  }

  static Future<void> lauchMap(
      {required String latitude, required String longitude}) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    await launch(googleUrl);
  }
}
