import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../models/item.dart';

// void main() async {categorySection
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: FirebaseOptions(
//           apiKey: "AIzaSyDX6ZBho7f-mpCD4yZL3W09tVkPnijaJ7Y",
//           appId: "com.example.flutter_application_for_test_fb",
//           messagingSenderId:
//               "396072919796-2cke8dlb936kmrmrptmh307ag7b2bsmq.apps.googleusercontent.com",
//           projectId: "ftestinforflutter"));
//   runApp(ItemApp());
// }

class ItemAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      home: ItemFireBaseDemo(),
    );
  }
}

class ItemFireBaseDemo extends StatefulWidget {
  ItemFireBaseDemo() : super();

  final String appTitlle = "Item Category Details";

  @override
  State<ItemFireBaseDemo> createState() => _ItemFireBaseDemoState();
}

class _ItemFireBaseDemoState extends State<ItemFireBaseDemo> {
  TextEditingController itemCategorieNameController = TextEditingController();
  TextEditingController categorySectionController = TextEditingController();

  bool isEditing = false;
  bool textFieldVisibility = false;

  String firststoreCollectionName = "Item";

  late Item currentItem;

  getAllItem() {
    return FirebaseFirestore.instance
        .collection(firststoreCollectionName)
        .snapshots();
  }

  addItem() async {
    Item item = Item(
        itemCategorieName: itemCategorieNameController.text,
        categorySection: categorySectionController.text);

    try {
      FirebaseFirestore.instance
          .runTransaction((Transaction transaction) async {
        await FirebaseFirestore.instance
            .collection(firststoreCollectionName)
            .doc()
            .set(item.toJson());
      });
    } catch (e) {
      print(e.toString());
    }
  }

  updateItem(Item item, String itemCategorieName, String categorySection) {
    try {
      FirebaseFirestore.instance.runTransaction((transaction) async {
        await transaction.update(item.documentReference, {
          'itemCategorieName': itemCategorieName,
          'categorySection': categorySection
        });
      });
    } catch (e) {
      print(e.toString());
    }
  }

  updateIfEditing() {
    if (isEditing) {
      updateItem(currentItem, itemCategorieNameController.text,
          categorySectionController.text);

      setState(() {
        isEditing = false;
      });
    }
  }

  deleteItem(Item item) {
    FirebaseFirestore.instance.runTransaction((Transaction transaction) async {
      await transaction.delete(item.documentReference);
    });
  }

  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getAllItem(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }
        if (snapshot.hasData) {
          print("Documents -> ${snapshot.data!.docs.length}");
          return buildList(context, snapshot.data!.docs);
        }
        throw '';
      },
    );
  }

  Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      children: snapshot.map((data) => listItemBuild(context, data)).toList(),
    );
  }

  Widget listItemBuild(BuildContext context, DocumentSnapshot data) {
    final item = Item.fromSnapshot(data);

    return Padding(
      key: ValueKey(item.itemCategorieName),
      padding: EdgeInsets.symmetric(vertical: 19, horizontal: 1),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.deepOrangeAccent),
          borderRadius: BorderRadius.circular(4),
        ),
        child: SingleChildScrollView(
          child: ListTile(
              title: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        color: Colors.yellow,
                      ),
                      Text(item.itemCategorieName),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.not_listed_location,
                        color: Colors.purple,
                      ),
                      Text(item.categorySection),
                    ],
                  )
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  deleteItem(item);
                },
              ),
              onTap: () {
                setUpdateUI(item);
              }),
        ),
      ),
    );
  }

  setUpdateUI(Item item) {
    itemCategorieNameController.text = item.itemCategorieName;
    categorySectionController.text = item.categorySection;

    setState(() {
      textFieldVisibility = true;
      isEditing = true;
      currentItem = item;
    });
  }

  button() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        child: Text(isEditing ? "UPDATE" : "ADD"),
        onPressed: () {
          if (isEditing == true) {
            updateIfEditing();
          } else {
            addItem();
          }

          setState(() {
            textFieldVisibility = false;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.appTitlle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                textFieldVisibility = !textFieldVisibility;
              });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            textFieldVisibility
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          TextFormField(
                            controller: itemCategorieNameController,
                            decoration: InputDecoration(
                                labelText: "Category",
                                hintText: "Enter Category Name"),
                          ),
                          TextFormField(
                            controller: categorySectionController,
                            decoration: InputDecoration(
                                labelText: "Category Section",
                                hintText: "Enter Category Section"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      button()
                    ],
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: buildBody(context),
            )
          ],
        ),
      ),
    );
  }
}
