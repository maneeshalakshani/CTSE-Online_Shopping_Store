import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/functions/outletFunctions.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/normal-btn.dart';
import 'package:shopping_store/widgets/customMessage.dart';
import 'package:shopping_store/widgets/snack_bar.dart';
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
  TextEditingController coordinatesController1 = TextEditingController();
  TextEditingController coordinatesController2 = TextEditingController();

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
                const CustomTitle(title: "Add Outlets"),
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
                  label: "Location Co-ordinate 1",
                  hintText: "Enter location coordinate 1",
                  errorMsg: "Please enter location co-ordinate 1",
                  controller: coordinatesController1,
                  validator: true,
                ),
                textFeild(
                  label: "Location Co-ordinate 2",
                  hintText: "Enter location coordinate 2",
                  errorMsg: "Please enter location co-ordinate 2",
                  controller: coordinatesController2,
                  validator: true,
                ),
                normalButon(
                  title: "Add Outlet",
                  marginTop: 20,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      OutletFunction().createOutlet(
                          location: locationController.text,
                          coordinate1: coordinatesController1.text,
                          coordinate2: coordinatesController2.text);
                      ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar(
                        msg: "Your outlet Added Successfully...",
                        title: "Add",
                        contentType: ContentType.success,
                      ));  
                      context.router.push(const AllOutletsRoute());
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
