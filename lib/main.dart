import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/routes/routes.gr.dart';

final _appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions( 
    apiKey: "AIzaSyDw0aGZD42G8ur1rpxthp3CVm9ogA3hPYQ",
    appId: "com.example.shopping_store",
    messagingSenderId: "449892615895-evnrluuhjckglnfltfd57mnudnu2saum.apps.googleusercontent.com",
    projectId: "ctse-online-shopping-store"));

  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: APP_COLOR,
    ),
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
  ));
}
