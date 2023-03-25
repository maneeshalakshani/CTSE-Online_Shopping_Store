import 'package:auto_route/auto_route.dart';
import 'package:shopping_store/pages/WidgetTree.dart';
import 'package:shopping_store/pages/about-us/AboutUs.dart';
import 'package:shopping_store/pages/auth/login.dart';
import 'package:shopping_store/pages/cart/cart-view.dart';
import 'package:shopping_store/pages/cart/item-list/item_list_view.dart';
import 'package:shopping_store/pages/contact-us/ContactUs.dart';
import 'package:shopping_store/pages/home/AdminHome.dart';
import 'package:shopping_store/pages/home/Home.dart';
import 'package:shopping_store/pages/see-outlets/AddOutlets.dart';
import 'package:shopping_store/pages/see-outlets/UpdateOutlet.dart';
import 'package:shopping_store/pages/see-outlets/ViewOutlets.dart';
import 'package:shopping_store/pages/welcome/Welcome.dart';

/// Need to run the following command
///    flutter packages pub run build_runner watch --delete-conflicting-outputs

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    MaterialRoute(page: WelcomeView, initial: true),
    MaterialRoute(page: WidgetTreeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: AdminHomeView),
    MaterialRoute(page: ItemListView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: AddOutletsView),
    MaterialRoute(page: AllOutletsView),
    MaterialRoute(page: UpdateOutletView),
    MaterialRoute(page: ContactUsView),
    MaterialRoute(page: AboutUsView),
  ],
)
class $AppRouter {}
