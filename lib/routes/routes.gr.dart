// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../models/outlet.dart' as _i19;
import '../pages/about-us/AboutUs.dart' as _i15;
import '../pages/auth/login.dart' as _i3;
import '../pages/cart/cart-view.dart' as _i7;
import '../pages/cart/item-list/item_list_view.dart' as _i6;
import '../pages/contact-us/ContactUs.dart' as _i14;
import '../pages/delivery/Delivery.dart' as _i13;
import '../pages/help/Help.dart' as _i16;
import '../pages/home/AdminHome.dart' as _i5;
import '../pages/home/Category.dart' as _i11;
import '../pages/home/Home.dart' as _i4;
import '../pages/salesItem/SalesItem.dart' as _i12;
import '../pages/see-outlets/AddOutlets.dart' as _i8;
import '../pages/see-outlets/UpdateOutlet.dart' as _i10;
import '../pages/see-outlets/ViewOutlets.dart' as _i9;
import '../pages/welcome/Welcome.dart' as _i1;
import '../pages/WidgetTree.dart' as _i2;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.WelcomeView(),
      );
    },
    WidgetTreeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.WidgetTreeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AdminHomeView(),
      );
    },
    ItemListRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ItemListView(),
      );
    },
    CartRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CartView(),
      );
    },
    AddOutletsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AddOutletsView(),
      );
    },
    AllOutletsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AllOutletsView(),
      );
    },
    UpdateOutletRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateOutletRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.UpdateOutletView(
          key: args.key,
          outlet: args.outlet,
        ),
      );
    },
    ItemAppRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.ItemAppView(),
      );
    },
    SalesItemsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SalesItemsView(),
      );
    },
    DeliveryRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.DeliveryView(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ContactUsView(),
      );
    },
    AboutUsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.AboutUsView(),
      );
    },
    HelpRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.HelpView(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          WelcomeRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          WidgetTreeRoute.name,
          path: '/widget-tree-view',
        ),
        _i17.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i17.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i17.RouteConfig(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        ),
        _i17.RouteConfig(
          ItemListRoute.name,
          path: '/item-list-view',
        ),
        _i17.RouteConfig(
          CartRoute.name,
          path: '/cart-view',
        ),
        _i17.RouteConfig(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        ),
        _i17.RouteConfig(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        ),
        _i17.RouteConfig(
          UpdateOutletRoute.name,
          path: '/update-outlet-view',
        ),
        _i17.RouteConfig(
          ItemAppRoute.name,
          path: '/item-app-view',
        ),
        _i17.RouteConfig(
          SalesItemsRoute.name,
          path: '/sales-items-view',
        ),
        _i17.RouteConfig(
          DeliveryRoute.name,
          path: '/delivery-view',
        ),
        _i17.RouteConfig(
          ContactUsRoute.name,
          path: '/contact-us-view',
        ),
        _i17.RouteConfig(
          AboutUsRoute.name,
          path: '/about-us-view',
        ),
        _i17.RouteConfig(
          HelpRoute.name,
          path: '/help-view',
        ),
      ];
}

/// generated route for
/// [_i1.WelcomeView]
class WelcomeRoute extends _i17.PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i2.WidgetTreeView]
class WidgetTreeRoute extends _i17.PageRouteInfo<void> {
  const WidgetTreeRoute()
      : super(
          WidgetTreeRoute.name,
          path: '/widget-tree-view',
        );

  static const String name = 'WidgetTreeRoute';
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.HomeView]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.AdminHomeView]
class AdminHomeRoute extends _i17.PageRouteInfo<void> {
  const AdminHomeRoute()
      : super(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        );

  static const String name = 'AdminHomeRoute';
}

/// generated route for
/// [_i6.ItemListView]
class ItemListRoute extends _i17.PageRouteInfo<void> {
  const ItemListRoute()
      : super(
          ItemListRoute.name,
          path: '/item-list-view',
        );

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i7.CartView]
class CartRoute extends _i17.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart-view',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.AddOutletsView]
class AddOutletsRoute extends _i17.PageRouteInfo<void> {
  const AddOutletsRoute()
      : super(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        );

  static const String name = 'AddOutletsRoute';
}

/// generated route for
/// [_i9.AllOutletsView]
class AllOutletsRoute extends _i17.PageRouteInfo<void> {
  const AllOutletsRoute()
      : super(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        );

  static const String name = 'AllOutletsRoute';
}

/// generated route for
/// [_i10.UpdateOutletView]
class UpdateOutletRoute extends _i17.PageRouteInfo<UpdateOutletRouteArgs> {
  UpdateOutletRoute({
    _i18.Key? key,
    required _i19.Outlet outlet,
  }) : super(
          UpdateOutletRoute.name,
          path: '/update-outlet-view',
          args: UpdateOutletRouteArgs(
            key: key,
            outlet: outlet,
          ),
        );

  static const String name = 'UpdateOutletRoute';
}

class UpdateOutletRouteArgs {
  const UpdateOutletRouteArgs({
    this.key,
    required this.outlet,
  });

  final _i18.Key? key;

  final _i19.Outlet outlet;

  @override
  String toString() {
    return 'UpdateOutletRouteArgs{key: $key, outlet: $outlet}';
  }
}

/// generated route for
/// [_i11.ItemAppView]
class ItemAppRoute extends _i17.PageRouteInfo<void> {
  const ItemAppRoute()
      : super(
          ItemAppRoute.name,
          path: '/item-app-view',
        );

  static const String name = 'ItemAppRoute';
}

/// generated route for
/// [_i12.SalesItemsView]
class SalesItemsRoute extends _i17.PageRouteInfo<void> {
  const SalesItemsRoute()
      : super(
          SalesItemsRoute.name,
          path: '/sales-items-view',
        );

  static const String name = 'SalesItemsRoute';
}

/// generated route for
/// [_i13.DeliveryView]
class DeliveryRoute extends _i17.PageRouteInfo<void> {
  const DeliveryRoute()
      : super(
          DeliveryRoute.name,
          path: '/delivery-view',
        );

  static const String name = 'DeliveryRoute';
}

/// generated route for
/// [_i14.ContactUsView]
class ContactUsRoute extends _i17.PageRouteInfo<void> {
  const ContactUsRoute()
      : super(
          ContactUsRoute.name,
          path: '/contact-us-view',
        );

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i15.AboutUsView]
class AboutUsRoute extends _i17.PageRouteInfo<void> {
  const AboutUsRoute()
      : super(
          AboutUsRoute.name,
          path: '/about-us-view',
        );

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i16.HelpView]
class HelpRoute extends _i17.PageRouteInfo<void> {
  const HelpRoute()
      : super(
          HelpRoute.name,
          path: '/help-view',
        );

  static const String name = 'HelpRoute';
}
