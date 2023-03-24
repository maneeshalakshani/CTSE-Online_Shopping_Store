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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/auth/login.dart' as _i2;
import '../pages/cart/cart-view.dart' as _i6;
import '../pages/cart/item-list/item_list_view.dart' as _i5;
import '../pages/home/AdminHome.dart' as _i4;
import '../pages/home/Home.dart' as _i3;
import '../pages/see-outlets/AddOutlets.dart' as _i7;
import '../pages/WidgetTree.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    WidgetTreeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.WidgetTreeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AdminHomeView(),
      );
    },
    ItemListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ItemListView(),
      );
    },
    CartRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CartView(),
      );
    },
    AddOutletsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.AddOutletsView(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          WidgetTreeRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i8.RouteConfig(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        ),
        _i8.RouteConfig(
          ItemListRoute.name,
          path: '/item-list-view',
        ),
        _i8.RouteConfig(
          CartRoute.name,
          path: '/cart-view',
        ),
        _i8.RouteConfig(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        ),
      ];
}

/// generated route for
/// [_i1.WidgetTreeView]
class WidgetTreeRoute extends _i8.PageRouteInfo<void> {
  const WidgetTreeRoute()
      : super(
          WidgetTreeRoute.name,
          path: '/',
        );

  static const String name = 'WidgetTreeRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AdminHomeView]
class AdminHomeRoute extends _i8.PageRouteInfo<void> {
  const AdminHomeRoute()
      : super(
          AdminHomeRoute.name,
          path: '/admin-home-view',
        );

  static const String name = 'AdminHomeRoute';
}

/// generated route for
/// [_i5.ItemListView]
class ItemListRoute extends _i8.PageRouteInfo<void> {
  const ItemListRoute()
      : super(
          ItemListRoute.name,
          path: '/item-list-view',
        );

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i6.CartView]
class CartRoute extends _i8.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart-view',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i7.AddOutletsView]
class AddOutletsRoute extends _i8.PageRouteInfo<void> {
  const AddOutletsRoute()
      : super(
          AddOutletsRoute.name,
          path: '/add-outlets-view',
        );

  static const String name = 'AddOutletsRoute';
}
