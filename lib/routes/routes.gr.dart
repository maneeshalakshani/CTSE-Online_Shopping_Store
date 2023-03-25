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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../models/outlet.dart' as _i13;
import '../pages/auth/login.dart' as _i3;
import '../pages/cart/cart-view.dart' as _i7;
import '../pages/cart/item-list/item_list_view.dart' as _i6;
import '../pages/home/AdminHome.dart' as _i5;
import '../pages/home/Home.dart' as _i4;
import '../pages/see-outlets/AddOutlets.dart' as _i8;
import '../pages/see-outlets/UpdateOutlet.dart' as _i10;
import '../pages/see-outlets/ViewOutlets.dart' as _i9;
import '../pages/welcome/Welcome.dart' as _i1;
import '../pages/WidgetTree.dart' as _i2;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.WelcomeView(),
      );
    },
    WidgetTreeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.WidgetTreeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AdminHomeView(),
      );
    },
    ItemListRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ItemListView(),
      );
    },
    CartRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CartView(),
      );
    },
    AddOutletsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AddOutletsView(),
      );
    },
    AllOutletsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AllOutletsView(),
      );
    },
    UpdateOutletRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateOutletRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.UpdateOutletView(
          key: args.key,
          outlet: args.outlet,
        ),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          WelcomeRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          WidgetTreeRoute.name,
          path: '/widget-tree-view',
        ),
        _i11.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i11.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i11.RouteConfig(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        ),
        _i11.RouteConfig(
          ItemListRoute.name,
          path: '/item-list-view',
        ),
        _i11.RouteConfig(
          CartRoute.name,
          path: '/cart-view',
        ),
        _i11.RouteConfig(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        ),
        _i11.RouteConfig(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        ),
        _i11.RouteConfig(
          UpdateOutletRoute.name,
          path: '/update-outlet-view',
        ),
      ];
}

/// generated route for
/// [_i1.WelcomeView]
class WelcomeRoute extends _i11.PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i2.WidgetTreeView]
class WidgetTreeRoute extends _i11.PageRouteInfo<void> {
  const WidgetTreeRoute()
      : super(
          WidgetTreeRoute.name,
          path: '/widget-tree-view',
        );

  static const String name = 'WidgetTreeRoute';
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.HomeView]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.AdminHomeView]
class AdminHomeRoute extends _i11.PageRouteInfo<void> {
  const AdminHomeRoute()
      : super(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        );

  static const String name = 'AdminHomeRoute';
}

/// generated route for
/// [_i6.ItemListView]
class ItemListRoute extends _i11.PageRouteInfo<void> {
  const ItemListRoute()
      : super(
          ItemListRoute.name,
          path: '/item-list-view',
        );

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i7.CartView]
class CartRoute extends _i11.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart-view',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.AddOutletsView]
class AddOutletsRoute extends _i11.PageRouteInfo<void> {
  const AddOutletsRoute()
      : super(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        );

  static const String name = 'AddOutletsRoute';
}

/// generated route for
/// [_i9.AllOutletsView]
class AllOutletsRoute extends _i11.PageRouteInfo<void> {
  const AllOutletsRoute()
      : super(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        );

  static const String name = 'AllOutletsRoute';
}

/// generated route for
/// [_i10.UpdateOutletView]
class UpdateOutletRoute extends _i11.PageRouteInfo<UpdateOutletRouteArgs> {
  UpdateOutletRoute({
    _i12.Key? key,
    required _i13.Outlet outlet,
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

  final _i12.Key? key;

  final _i13.Outlet outlet;

  @override
  String toString() {
    return 'UpdateOutletRouteArgs{key: $key, outlet: $outlet}';
  }
}
