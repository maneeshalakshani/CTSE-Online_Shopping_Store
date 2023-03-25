import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/functions/outletFunctions.dart';
import 'package:shopping_store/models/outlet.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/widgets/appBarCustom.dart';
import 'package:shopping_store/widgets/buttons/normal-btn.dart';
import 'package:shopping_store/widgets/customMessage.dart';
import 'package:shopping_store/widgets/textField.dart';
import 'package:shopping_store/widgets/title.dart';

class UpdateOutletView extends StatefulWidget {
  const UpdateOutletView({super.key, required this.outlet});
  final Outlet outlet;

  @override
  State<UpdateOutletView> createState() => _UpdateOutletViewState();
}

class _UpdateOutletViewState extends State<UpdateOutletView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController locationController = TextEditingController();
  TextEditingController coordinatesController1 = TextEditingController();
  TextEditingController coordinatesController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    locationController.text = widget.outlet.location;
    coordinatesController1.text = widget.outlet.coordinate1;
    coordinatesController2.text = widget.outlet.coordinate2;
  }

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
                const CustomTitle(title: "Update Outlet"),
                customMessage(
                    msg:
                        "It is required for customers to know about the locations of the outlets. This will help them find out your locations. This will update the selected outlet information."),
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
                  title: "Update Outlet",
                  marginTop: 20,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      OutletFunction().updateOutlet(
                          outlet: widget.outlet,
                          location: locationController.text,
                          coordinate1: coordinatesController1.text,
                          coordinate2: coordinatesController2.text);
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
