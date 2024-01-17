import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:riverpod/src/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'MyRoutes.gr.dart';

part 'MyRoutes.g.dart';

final _userRole =
    ValueNotifier<Entity<UserRole>>(Entity(setNewUser: false, object: null));

@AutoRouterConfig(replaceInRouteName: "View,Route")
class MyRoutes extends $MyRoutes {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterAsCompanyRoute.page),
        AutoRoute(page: RegisterAsCustomerRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(
            page: CompanyNavigationScaffoldRoute.page,
            children: getCompanyRoutes()),
        AutoRoute(
            page: CustomerNavigationScaffoldRoute.page,
            children: getCustomerRoutes()),
        AutoRoute(
            page: AdminNavigationScaffoldRoute.page,
            children: getAdminRoutes()),
      ];
}

List<AutoRoute> getCustomerRoutes() => [
      AutoRoute(page: CustomerHomeTabRoute.page, children: [
        AutoRoute(path: '', page: CustomerQuotesRoute.page),
        AutoRoute(page: CustomerCompanyProfileRoute.page),
        AutoRoute(page: RateServiceRoute.page),
        AutoRoute(page: PendingQuotesRoute.page),
        AutoRoute(page: AddQuoteRoute.page),
        AutoRoute(page: AddQuoteDealSelectionRoute.page),
      ]),
      AutoRoute(page: CustomerHistoryTabRoute.page, children: [
        AutoRoute(path: '', page: HistoryRoute.page),
        AutoRoute(page: CustomerCompanyProfileRoute.page)
      ]),
      AutoRoute(page: CustomerProfileTabRoute.page, children: [
        AutoRoute(path: '', page: CustomerProfileRoute.page),
        AutoRoute(page: EditCustomerProfileRoute.page),
      ])
    ];

List<AutoRoute> getCompanyRoutes() => [
      AutoRoute(page: CompanyHomeTabRoute.page, children: [
        AutoRoute(path: '', page: PendingQuotesRoute.page),
      ]),
      AutoRoute(page: CompanyAcceptedTabRoute.page, children: [
        AutoRoute(path: '', page: CompanyAcceptedQuotesRoute.page),
      ]),
      AutoRoute(
          page: CompanyDoneTabRoute.page,
          children: [AutoRoute(path: '', page: HistoryRoute.page)]),
      AutoRoute(page: CompanyProfileTabRoute.page, children: [
        AutoRoute(path: '', page: CompanyProfileRoute.page),
        AutoRoute(page: CompanyEditServicesRoute.page),
        AutoRoute(page: CompanyEditBusinessInfoRoute.page),
      ]),
    ];

List<AutoRoute> getAdminRoutes() => [
      AutoRoute(page: AdminHomeTabRoute.page, children: [
        AutoRoute(path: '', page: AdminPendingRequestsRoute.page)
      ]),
      AutoRoute(page: AdminDashboardRoute.page, children: [
        AutoRoute(path: '', page: AdminDashboardCompanyRoute.page),
        AutoRoute(page: AdminDashboardCustomerRoute.page),
      ]),
      AutoRoute(
          page: AdminProfileTabRoute.page,
          children: [AutoRoute(path: '', page: AdminProfileRoute.page)]),
    ];

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('New route pushed: ${route.settings.name}');
    //log('Current Stack State: ${route.settings.}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Tab route re-visited: ${route.name}');
  }
}

@riverpod
RouterConfig<UrlState> myRoutes(MyRoutesRef ref) {
  return MyRoutes().config(
    navigatorObservers: () => [MyObserver()],
  );
}
