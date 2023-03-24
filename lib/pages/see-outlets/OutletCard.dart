import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/functions/outletFunctions.dart';
import 'package:shopping_store/models/auth.dart';
import 'package:shopping_store/models/outlet.dart';
import 'package:shopping_store/routes/routes.gr.dart';

class OutletCard extends StatefulWidget {
  const OutletCard({super.key, required this.context, required this.data});

  final BuildContext context;
  final DocumentSnapshot data;

  @override
  State<OutletCard> createState() => _OutletCardState();
}

class _OutletCardState extends State<OutletCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final outlet = Outlet.fromSnapshot(widget.data);

    return Container(
      width: width,
      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  outlet.location,
                  style: const TextStyle(
                    color: APP_COLOR,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  outlet.coordinate1,
                  style: TextStyle(
                    color: DESCRIPTION_COLOR,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  outlet.coordinate2,
                  style: TextStyle(
                    color: DESCRIPTION_COLOR,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("View"),
              ),
              Auth().currentUser?.email == 'admin@gmail.com'
                  ? IconButton(
                      onPressed: () {
                        context.router.push(UpdateOutletRoute(outlet: outlet));
                      },
                      icon: const Icon(
                        Icons.update,
                        color: Colors.green,
                      ),
                    )
                  : const SizedBox(),
              Auth().currentUser?.email == 'admin@gmail.com'
                  ? IconButton(
                      onPressed: () {
                        OutletFunction().deleteOutlet(outlet: outlet);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )
                  : const SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
