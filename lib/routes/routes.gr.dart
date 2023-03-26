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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../models/outlet.dart' as _i14;
import '../pages/auth/login.dart' as _i2;
import '../pages/cart/cart-view.dart' as _i6;
import '../pages/cart/item-list/item_list_view.dart' as _i5;
import '../pages/home/AdminHome.dart' as _i4;
import '../pages/home/Category.dart' as _i10;
import '../pages/home/Home.dart' as _i3;
import '../pages/salesItem/SalesItem.dart' as _i11;
import '../pages/see-outlets/AddOutlets.dart' as _i7;
import '../pages/see-outlets/UpdateOutlet.dart' as _i9;
import '../pages/see-outlets/ViewOutlets.dart' as _i8;
import '../pages/WidgetTree.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    WidgetTreeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.WidgetTreeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AdminHomeView(),
      );
    },
    ItemListRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ItemListView(),
      );
    },
    CartRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CartView(),
      );
    },
    AddOutletsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.AddOutletsView(),
      );
    },
    AllOutletsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AllOutletsView(),
      );
    },
    UpdateOutletRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateOutletRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.UpdateOutletView(
          key: args.key,
          outlet: args.outlet,
        ),
      );
    },
    ItemAppRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ItemAppView(),
      );
    },
    SalesItemsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SalesItemsView(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          WidgetTreeRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i12.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i12.RouteConfig(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        ),
        _i12.RouteConfig(
          ItemListRoute.name,
          path: '/item-list-view',
        ),
        _i12.RouteConfig(
          CartRoute.name,
          path: '/cart-view',
        ),
        _i12.RouteConfig(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        ),
        _i12.RouteConfig(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        ),
        _i12.RouteConfig(
          UpdateOutletRoute.name,
          path: '/update-outlet-view',
        ),
        _i12.RouteConfig(
          ItemAppRoute.name,
          path: '/item-app-view',
        ),
        _i12.RouteConfig(
          SalesItemsRoute.name,
          path: '/sales-items-view',
        ),
      ];
}

/// generated route for
/// [_i1.WidgetTreeView]
class WidgetTreeRoute extends _i12.PageRouteInfo<void> {
  const WidgetTreeRoute()
      : super(
          WidgetTreeRoute.name,
          path: '/',
        );

  static const String name = 'WidgetTreeRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AdminHomeView]
class AdminHomeRoute extends _i12.PageRouteInfo<void> {
  const AdminHomeRoute()
      : super(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        );

  static const String name = 'AdminHomeRoute';
}

/// generated route for
/// [_i5.ItemListView]
class ItemListRoute extends _i12.PageRouteInfo<void> {
  const ItemListRoute()
      : super(
          ItemListRoute.name,
          path: '/item-list-view',
        );

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i6.CartView]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart-view',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i7.AddOutletsView]
class AddOutletsRoute extends _i12.PageRouteInfo<void> {
  const AddOutletsRoute()
      : super(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        );

  static const String name = 'AddOutletsRoute';
}

/// generated route for
/// [_i8.AllOutletsView]
class AllOutletsRoute extends _i12.PageRouteInfo<void> {
  const AllOutletsRoute()
      : super(
          AllOutletsRoute.name,
          path: '/all-outlets-view',
        );

  static const String name = 'AllOutletsRoute';
}

/// generated route for
/// [_i9.UpdateOutletView]
class UpdateOutletRoute extends _i12.PageRouteInfo<UpdateOutletRouteArgs> {
  UpdateOutletRoute({
    _i13.Key? key,
    required _i14.Outlet outlet,
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

  final _i13.Key? key;

  final _i14.Outlet outlet;

  @override
  String toString() {
    return 'UpdateOutletRouteArgs{key: $key, outlet: $outlet}';
  }
}

/// generated route for
/// [_i10.ItemAppView]
class ItemAppRoute extends _i12.PageRouteInfo<void> {
  const ItemAppRoute()
      : super(
          ItemAppRoute.name,
          path: '/item-app-view',
        );

  static const String name = 'ItemAppRoute';
}

/// generated route for
/// [_i11.SalesItemsView]
class SalesItemsRoute extends _i12.PageRouteInfo<void> {
  const SalesItemsRoute()
      : super(
          SalesItemsRoute.name,
          path: '/sales-items-view',
        );

  static const String name = 'SalesItemsRoute';
}
