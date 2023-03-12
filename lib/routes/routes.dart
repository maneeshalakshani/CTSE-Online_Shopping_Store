import 'package:auto_route/auto_route.dart';
import 'package:shopping_store/pages/auth/login.dart';
import 'package:shopping_store/pages/home/Home.dart';

/// Need to run the following command
///    flutter packages pub run build_runner watch --delete-conflicting-outputs
///
@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: LoginView),
  ],
)
class $AppRouter {}