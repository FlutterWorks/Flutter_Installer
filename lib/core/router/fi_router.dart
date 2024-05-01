import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_installer/customize/customize_screen.dart';
import 'package:flutter_installer/faq/faq_screen.dart';
import 'package:flutter_installer/home/home_screen.dart';
import 'package:flutter_installer/verify/verify_screen.dart';

part 'fi_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Screen,Route",
)
class FIRouter extends _$FIRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FaqRoute.page),
        AutoRoute(page: CustomizeRoute.page),
        AutoRoute(page: VerifyRoute.page),
      ];
}
