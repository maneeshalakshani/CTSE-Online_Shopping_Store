import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_store/models/cart.dart';
import 'package:shopping_store/models/cartItem.dart';

class CartFunction {
  String fireStoreCollectionName = "carts";

  getAllCarts() {
    return FirebaseFirestore.instance
        .collection(fireStoreCollectionName)
        .snapshots();
  }

  createCart({required String userID}) async {
    Cart cart = Cart(cartItemList: null, userID: userID);
    try {
      FirebaseFirestore.instance
          .runTransaction((Transaction transaction) async {
        await FirebaseFirestore.instance
            .collection(fireStoreCollectionName)
            .doc()
            .set(cart.toJson());
      });
    } catch (e) {
      print(e.toString());
    }
  }

  // addItemsToTheCart(
  //     {required List<CartItem> cartItemList, required String userID}) async {
  //   Cart cart = Cart(cartItemList: cartItemList, userID: userID);
  //   try {
  //     FirebaseFirestore.instance
  //         .runTransaction((Transaction transaction) async {
  //       await FirebaseFirestore.instance
  //           .collection(fireStoreCollectionName)
  //           .doc()
  //           .set(cart.toJson());
  //     });
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  addItemsToTheCart(Cart cart,
      {required List<CartItem> cartItemList, required String userID}) {
    try {
      FirebaseFirestore.instance.runTransaction((transaction) async {
        await transaction.update(cart.documentReference, {
          'cartItemList': cartItemList,
          'userID': userID,
        });
      });
    } catch (e) {
      print(e.toString());
    }
  }

  getCart() {
    return FirebaseFirestore.instance
        .collection(fireStoreCollectionName)
        .doc("g4mShEfsFWEuKU6p1m9B")
        .get();
  }
}
