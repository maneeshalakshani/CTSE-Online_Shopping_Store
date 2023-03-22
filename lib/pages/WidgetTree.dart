import 'package:flutter/material.dart';
import 'package:shopping_store/models/auth.dart';
import 'package:shopping_store/pages/auth/login.dart';
import 'package:shopping_store/pages/home/AdminHome.dart';
import 'package:shopping_store/pages/home/Home.dart';

class WidgetTreeView extends StatefulWidget {
  const WidgetTreeView({Key? key}) : super(key: key);

  @override
  _WidgetTreeViewState createState() => _WidgetTreeViewState();
}

class _WidgetTreeViewState extends State<WidgetTreeView> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChange,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // return HomeView();
          return Auth().currentUser!.email == "admin@gmail.com"
              ? AdminHomeView()
              : HomeView();
        } else {
          return const LoginView();
        }
      },
    );
  }
}
