import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:shopping_store/routes/routes.dart';

final _appRouter = AppRouter();

void main() => runApp(MaterialApp.router(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: APP_COLOR,
  ),

  routerDelegate: _appRouter.delegate(),
  routeInformationParser: _appRouter.defaultRouteParser(),
));