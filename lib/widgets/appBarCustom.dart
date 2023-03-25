import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/models/auth.dart';
import 'package:shopping_store/routes/routes.gr.dart';

PreferredSizeWidget appBarCustom(BuildContext context) {
  return AppBar(
    title: const Text("Online Shopping Store"),
    actions: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          print("sdgaerg");
          Auth().currentUser!.email == "admin@gmail.com"
              ? context.router.push(const AdminHomeRoute())
              : context.router.push(const HomeRoute());
        },
      ),
      // IconButton(
      //   icon: Icon(Icons.account_circle),
      //   onPressed: () {
      //     Auth().signOut();
      //   },
      // ),
      PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: const Text("About"),
              onTap: () {},
            ),
            PopupMenuItem(
              child: const Text("Contact"),
              onTap: () {},
            ),
            PopupMenuItem(
              child: const Text("Sign out"),
              onTap: () {
                Auth().signOut();
              },
            ),
          ];
        },
      )
    ],
  );
}
