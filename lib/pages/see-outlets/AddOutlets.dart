import 'package:flutter/material.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/normal-btn.dart';
import 'package:shopping_store/widgets/customMessage.dart';
import 'package:shopping_store/widgets/textField.dart';
import 'package:shopping_store/widgets/title.dart';

class AddOutletsView extends StatefulWidget {
  const AddOutletsView({super.key});

  @override
  State<AddOutletsView> createState() => _AddOutletsViewState();
}

class _AddOutletsViewState extends State<AddOutletsView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController locationController = TextEditingController();
  TextEditingController coordinatesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const CustomTitle(title: "See Our Outlets"),
                customMessage(
                    msg:
                        "It is required for customers to know about the locations of the outlets. This will help them find out your locations"),
                textFeild(
                  label: "Outlet Location",
                  hintText: "Enter outlet location",
                  errorMsg: "Please enter outlet location",
                  controller: locationController,
                  validator: true,
                ),
                textFeild(
                  label: "Location Co-ordinates",
                  hintText: "Enter location coordinated",
                  errorMsg: "Please enter location co-ordinates",
                  controller: coordinatesController,
                  validator: true,
                ),
                normalButon(
                  title: "Add Outlet",
                  marginTop: 20,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print(locationController.text);
                      print(coordinatesController.text);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
