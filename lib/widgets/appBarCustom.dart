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
      PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: const Text("About"),
              onTap: () {
                context.router.push(const AboutUsRoute());
              },
            ),
            PopupMenuItem(
              child: const Text("Contact"),
              onTap: () {
                context.router.push(const ContactUsRoute());
              },
            ),
            PopupMenuItem(
              child: const Text("Sign out"),
              onTap: () {
                Auth().signOut();
              },
            ),
          ];
        },
      ),
    ],
  );
}
