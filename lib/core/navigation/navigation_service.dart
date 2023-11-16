import '/core/navigation/contract/base_navigation_service.dart';
import 'package:flutter/material.dart';

class NavigationService extends NavigationContract {
  NavigationService._();
  static final _shared = NavigationService._();
  static NavigationService get shared => _shared;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateTo({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path, arguments: data);
  }

  @override
  Future<void> navigaToClear({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(
      path,
      removeAllOldRoutes,
      arguments: data,
    );
  }

  @override
  void pop() => navigatorKey.currentState!.pop();
}
