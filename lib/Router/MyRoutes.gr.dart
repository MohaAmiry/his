// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;
import 'package:his/Features/_SharedDomain/Services/Service.dart' as _i30;
import 'package:his/Features/AdminDashboardFeature/Presentation/AdminDashboardCompanyView.dart'
    as _i3;
import 'package:his/Features/AdminDashboardFeature/Presentation/AdminDashboardCustomerView.dart'
    as _i4;
import 'package:his/Features/AdminDashboardFeature/Presentation/AdminDashboardView.dart'
    as _i6;
import 'package:his/Features/AuthenticationFeature/Presentation/AdminPendingRequestsView.dart'
    as _i8;
import 'package:his/Features/AuthenticationFeature/Presentation/LoginView.dart'
    as _i21;
import 'package:his/Features/AuthenticationFeature/Presentation/RegisterAsCompanyView.dart'
    as _i24;
import 'package:his/Features/AuthenticationFeature/Presentation/RegisterAsCustomerView.dart'
    as _i25;
import 'package:his/Features/ChatFeature/Presentation/ChatView.dart' as _i10;
import 'package:his/Features/ProfileFeature/Admin/Presentation/AdminProfileView.dart'
    as _i9;
import 'package:his/Features/ProfileFeature/Company/Presentation/CompanyEditBusinessInfoView.dart'
    as _i13;
import 'package:his/Features/ProfileFeature/Company/Presentation/CompanyEditServicesView.dart'
    as _i14;
import 'package:his/Features/ProfileFeature/Company/Presentation/CompanyProfileView.dart'
    as _i15;
import 'package:his/Features/ProfileFeature/Customer/Presentation/CustomerCompanyProfileView.dart'
    as _i16;
import 'package:his/Features/ProfileFeature/Customer/Presentation/CustomerProfileView.dart'
    as _i17;
import 'package:his/Features/ProfileFeature/Customer/Presentation/EditCustomerProfile.dart'
    as _i19;
import 'package:his/Features/QuotesFeature/Domain/Requests/RequestModel.dart'
    as _i29;
import 'package:his/Features/QuotesFeature/Presentation/_SharedViews/HistoryView.dart'
    as _i20;
import 'package:his/Features/QuotesFeature/Presentation/_SharedViews/PendingQuotesView.dart'
    as _i22;
import 'package:his/Features/QuotesFeature/Presentation/Company/CompanyAcceptedQuotesView.dart'
    as _i11;
import 'package:his/Features/QuotesFeature/Presentation/Company/CompanyRequestsView.dart'
    as _i12;
import 'package:his/Features/QuotesFeature/Presentation/Customer/AddQuoteDealSelectionView.dart'
    as _i1;
import 'package:his/Features/QuotesFeature/Presentation/Customer/AddQuoteView.dart'
    as _i2;
import 'package:his/Features/QuotesFeature/Presentation/Customer/CustomerQuotesView.dart'
    as _i18;
import 'package:his/Features/QuotesFeature/Presentation/Customer/RateServiceView.dart'
    as _i23;
import 'package:his/Features/SplashFeature/SplashView.dart' as _i26;
import 'package:his/Router/MainTabs.dart' as _i5;
import 'package:his/Router/NavigationScaffold.dart' as _i7;

abstract class $MyRoutes extends _i27.RootStackRouter {
  $MyRoutes({super.navigatorKey});

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    AddQuoteDealSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<AddQuoteDealSelectionRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddQuoteDealSelectionView(
          key: args.key,
          requestModel: args.requestModel,
        ),
      );
    },
    AddQuoteRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddQuoteView(),
      );
    },
    AdminDashboardCompanyRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AdminDashboardCompanyView(),
      );
    },
    AdminDashboardCustomerRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AdminDashboardCustomerView(),
      );
    },
    AdminDashboardTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AdminDashboardTabView(),
      );
    },
    AdminDashboardRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AdminDashboardView(),
      );
    },
    AdminHomeTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AdminHomeTabView(),
      );
    },
    AdminNavigationScaffoldRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.AdminNavigationScaffoldView(),
      );
    },
    AdminPendingRequestsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.AdminPendingRequestsView(),
      );
    },
    AdminProfileTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AdminProfileTabView(),
      );
    },
    AdminProfileRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.AdminProfileView(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ChatView(
          key: args.key,
          otherID: args.otherID,
          otherName: args.otherName,
        ),
      );
    },
    CompanyAcceptedQuotesRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.CompanyAcceptedQuotesView(),
      );
    },
    CompanyAcceptedTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompanyAcceptedTabView(),
      );
    },
    CompanyCustomerPendingRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.CompanyCustomerPendingView(),
      );
    },
    CompanyDoneTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompanyDoneTabView(),
      );
    },
    CompanyEditBusinessInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyEditBusinessInfoRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.CompanyEditBusinessInfoView(
          key: args.key,
          data: args.data,
        ),
      );
    },
    CompanyEditServicesRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyEditServicesRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.CompanyEditServicesView(
          key: args.key,
          services: args.services,
        ),
      );
    },
    CompanyHomeTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompanyHomeTabView(),
      );
    },
    CompanyNavigationScaffoldRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CompanyNavigationScaffoldView(),
      );
    },
    CompanyProfileTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompanyProfileTabView(),
      );
    },
    CompanyProfileRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.CompanyProfileView(),
      );
    },
    CustomerCompanyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerCompanyProfileRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.CustomerCompanyProfileView(
          key: args.key,
          companyID: args.companyID,
        ),
      );
    },
    CustomerHistoryTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CustomerHistoryTabView(),
      );
    },
    CustomerHomeTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CustomerHomeTabView(),
      );
    },
    CustomerNavigationScaffoldRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CustomerNavigationScaffoldView(),
      );
    },
    CustomerProfileTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CustomerProfileTabView(),
      );
    },
    CustomerProfileRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.CustomerProfileView(),
      );
    },
    CustomerQuotesRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.CustomerQuotesView(),
      );
    },
    EditCustomerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditCustomerProfileRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.EditCustomerProfileView(
          key: args.key,
          entity: args.entity,
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.HistoryView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.LoginView(),
      );
    },
    PendingQuotesRoute.name: (routeData) {
      final args = routeData.argsAs<PendingQuotesRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.PendingQuotesView(
          key: args.key,
          isCompany: args.isCompany,
        ),
      );
    },
    RateServiceRoute.name: (routeData) {
      final args = routeData.argsAs<RateServiceRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.RateServiceView(
          key: args.key,
          quoteID: args.quoteID,
          companyID: args.companyID,
        ),
      );
    },
    RegisterAsCompanyRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.RegisterAsCompanyView(),
      );
    },
    RegisterAsCustomerRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.RegisterAsCustomerView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddQuoteDealSelectionView]
class AddQuoteDealSelectionRoute
    extends _i27.PageRouteInfo<AddQuoteDealSelectionRouteArgs> {
  AddQuoteDealSelectionRoute({
    _i28.Key? key,
    required _i29.RequestModel requestModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          AddQuoteDealSelectionRoute.name,
          args: AddQuoteDealSelectionRouteArgs(
            key: key,
            requestModel: requestModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AddQuoteDealSelectionRoute';

  static const _i27.PageInfo<AddQuoteDealSelectionRouteArgs> page =
      _i27.PageInfo<AddQuoteDealSelectionRouteArgs>(name);
}

class AddQuoteDealSelectionRouteArgs {
  const AddQuoteDealSelectionRouteArgs({
    this.key,
    required this.requestModel,
  });

  final _i28.Key? key;

  final _i29.RequestModel requestModel;

  @override
  String toString() {
    return 'AddQuoteDealSelectionRouteArgs{key: $key, requestModel: $requestModel}';
  }
}

/// generated route for
/// [_i2.AddQuoteView]
class AddQuoteRoute extends _i27.PageRouteInfo<void> {
  const AddQuoteRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AddQuoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddQuoteRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AdminDashboardCompanyView]
class AdminDashboardCompanyRoute extends _i27.PageRouteInfo<void> {
  const AdminDashboardCompanyRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminDashboardCompanyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminDashboardCompanyRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AdminDashboardCustomerView]
class AdminDashboardCustomerRoute extends _i27.PageRouteInfo<void> {
  const AdminDashboardCustomerRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminDashboardCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminDashboardCustomerRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AdminDashboardTabView]
class AdminDashboardTabRoute extends _i27.PageRouteInfo<void> {
  const AdminDashboardTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminDashboardTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminDashboardTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AdminDashboardView]
class AdminDashboardRoute extends _i27.PageRouteInfo<void> {
  const AdminDashboardRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminDashboardRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AdminHomeTabView]
class AdminHomeTabRoute extends _i27.PageRouteInfo<void> {
  const AdminHomeTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminHomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminHomeTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i7.AdminNavigationScaffoldView]
class AdminNavigationScaffoldRoute extends _i27.PageRouteInfo<void> {
  const AdminNavigationScaffoldRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminNavigationScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminNavigationScaffoldRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i8.AdminPendingRequestsView]
class AdminPendingRequestsRoute extends _i27.PageRouteInfo<void> {
  const AdminPendingRequestsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminPendingRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminPendingRequestsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AdminProfileTabView]
class AdminProfileTabRoute extends _i27.PageRouteInfo<void> {
  const AdminProfileTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminProfileTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i9.AdminProfileView]
class AdminProfileRoute extends _i27.PageRouteInfo<void> {
  const AdminProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AdminProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminProfileRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ChatView]
class ChatRoute extends _i27.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i28.Key? key,
    required String otherID,
    required String otherName,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            otherID: otherID,
            otherName: otherName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i27.PageInfo<ChatRouteArgs> page =
      _i27.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.otherID,
    required this.otherName,
  });

  final _i28.Key? key;

  final String otherID;

  final String otherName;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, otherID: $otherID, otherName: $otherName}';
  }
}

/// generated route for
/// [_i11.CompanyAcceptedQuotesView]
class CompanyAcceptedQuotesRoute extends _i27.PageRouteInfo<void> {
  const CompanyAcceptedQuotesRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyAcceptedQuotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyAcceptedQuotesRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CompanyAcceptedTabView]
class CompanyAcceptedTabRoute extends _i27.PageRouteInfo<void> {
  const CompanyAcceptedTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyAcceptedTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyAcceptedTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i12.CompanyCustomerPendingView]
class CompanyCustomerPendingRoute extends _i27.PageRouteInfo<void> {
  const CompanyCustomerPendingRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyCustomerPendingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyCustomerPendingRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CompanyDoneTabView]
class CompanyDoneTabRoute extends _i27.PageRouteInfo<void> {
  const CompanyDoneTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyDoneTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyDoneTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i13.CompanyEditBusinessInfoView]
class CompanyEditBusinessInfoRoute
    extends _i27.PageRouteInfo<CompanyEditBusinessInfoRouteArgs> {
  CompanyEditBusinessInfoRoute({
    _i28.Key? key,
    required ({String name, String phoneNumber}) data,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          CompanyEditBusinessInfoRoute.name,
          args: CompanyEditBusinessInfoRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'CompanyEditBusinessInfoRoute';

  static const _i27.PageInfo<CompanyEditBusinessInfoRouteArgs> page =
      _i27.PageInfo<CompanyEditBusinessInfoRouteArgs>(name);
}

class CompanyEditBusinessInfoRouteArgs {
  const CompanyEditBusinessInfoRouteArgs({
    this.key,
    required this.data,
  });

  final _i28.Key? key;

  final ({String name, String phoneNumber}) data;

  @override
  String toString() {
    return 'CompanyEditBusinessInfoRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i14.CompanyEditServicesView]
class CompanyEditServicesRoute
    extends _i27.PageRouteInfo<CompanyEditServicesRouteArgs> {
  CompanyEditServicesRoute({
    _i28.Key? key,
    required Map<_i30.CompanyService, _i30.ServiceModel> services,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          CompanyEditServicesRoute.name,
          args: CompanyEditServicesRouteArgs(
            key: key,
            services: services,
          ),
          initialChildren: children,
        );

  static const String name = 'CompanyEditServicesRoute';

  static const _i27.PageInfo<CompanyEditServicesRouteArgs> page =
      _i27.PageInfo<CompanyEditServicesRouteArgs>(name);
}

class CompanyEditServicesRouteArgs {
  const CompanyEditServicesRouteArgs({
    this.key,
    required this.services,
  });

  final _i28.Key? key;

  final Map<_i30.CompanyService, _i30.ServiceModel> services;

  @override
  String toString() {
    return 'CompanyEditServicesRouteArgs{key: $key, services: $services}';
  }
}

/// generated route for
/// [_i5.CompanyHomeTabView]
class CompanyHomeTabRoute extends _i27.PageRouteInfo<void> {
  const CompanyHomeTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyHomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyHomeTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CompanyNavigationScaffoldView]
class CompanyNavigationScaffoldRoute extends _i27.PageRouteInfo<void> {
  const CompanyNavigationScaffoldRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyNavigationScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyNavigationScaffoldRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CompanyProfileTabView]
class CompanyProfileTabRoute extends _i27.PageRouteInfo<void> {
  const CompanyProfileTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyProfileTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i15.CompanyProfileView]
class CompanyProfileRoute extends _i27.PageRouteInfo<void> {
  const CompanyProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CompanyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyProfileRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i16.CustomerCompanyProfileView]
class CustomerCompanyProfileRoute
    extends _i27.PageRouteInfo<CustomerCompanyProfileRouteArgs> {
  CustomerCompanyProfileRoute({
    _i28.Key? key,
    required String companyID,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          CustomerCompanyProfileRoute.name,
          args: CustomerCompanyProfileRouteArgs(
            key: key,
            companyID: companyID,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomerCompanyProfileRoute';

  static const _i27.PageInfo<CustomerCompanyProfileRouteArgs> page =
      _i27.PageInfo<CustomerCompanyProfileRouteArgs>(name);
}

class CustomerCompanyProfileRouteArgs {
  const CustomerCompanyProfileRouteArgs({
    this.key,
    required this.companyID,
  });

  final _i28.Key? key;

  final String companyID;

  @override
  String toString() {
    return 'CustomerCompanyProfileRouteArgs{key: $key, companyID: $companyID}';
  }
}

/// generated route for
/// [_i5.CustomerHistoryTabView]
class CustomerHistoryTabRoute extends _i27.PageRouteInfo<void> {
  const CustomerHistoryTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerHistoryTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerHistoryTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CustomerHomeTabView]
class CustomerHomeTabRoute extends _i27.PageRouteInfo<void> {
  const CustomerHomeTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerHomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerHomeTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CustomerNavigationScaffoldView]
class CustomerNavigationScaffoldRoute extends _i27.PageRouteInfo<void> {
  const CustomerNavigationScaffoldRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerNavigationScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerNavigationScaffoldRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CustomerProfileTabView]
class CustomerProfileTabRoute extends _i27.PageRouteInfo<void> {
  const CustomerProfileTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerProfileTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i17.CustomerProfileView]
class CustomerProfileRoute extends _i27.PageRouteInfo<void> {
  const CustomerProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerProfileRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i18.CustomerQuotesView]
class CustomerQuotesRoute extends _i27.PageRouteInfo<void> {
  const CustomerQuotesRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CustomerQuotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerQuotesRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i19.EditCustomerProfileView]
class EditCustomerProfileRoute
    extends _i27.PageRouteInfo<EditCustomerProfileRouteArgs> {
  EditCustomerProfileRoute({
    _i28.Key? key,
    required ({String name, String phoneNumber}) entity,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          EditCustomerProfileRoute.name,
          args: EditCustomerProfileRouteArgs(
            key: key,
            entity: entity,
          ),
          initialChildren: children,
        );

  static const String name = 'EditCustomerProfileRoute';

  static const _i27.PageInfo<EditCustomerProfileRouteArgs> page =
      _i27.PageInfo<EditCustomerProfileRouteArgs>(name);
}

class EditCustomerProfileRouteArgs {
  const EditCustomerProfileRouteArgs({
    this.key,
    required this.entity,
  });

  final _i28.Key? key;

  final ({String name, String phoneNumber}) entity;

  @override
  String toString() {
    return 'EditCustomerProfileRouteArgs{key: $key, entity: $entity}';
  }
}

/// generated route for
/// [_i20.HistoryView]
class HistoryRoute extends _i27.PageRouteInfo<void> {
  const HistoryRoute({List<_i27.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i21.LoginView]
class LoginRoute extends _i27.PageRouteInfo<void> {
  const LoginRoute({List<_i27.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i22.PendingQuotesView]
class PendingQuotesRoute extends _i27.PageRouteInfo<PendingQuotesRouteArgs> {
  PendingQuotesRoute({
    _i28.Key? key,
    required bool isCompany,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          PendingQuotesRoute.name,
          args: PendingQuotesRouteArgs(
            key: key,
            isCompany: isCompany,
          ),
          initialChildren: children,
        );

  static const String name = 'PendingQuotesRoute';

  static const _i27.PageInfo<PendingQuotesRouteArgs> page =
      _i27.PageInfo<PendingQuotesRouteArgs>(name);
}

class PendingQuotesRouteArgs {
  const PendingQuotesRouteArgs({
    this.key,
    required this.isCompany,
  });

  final _i28.Key? key;

  final bool isCompany;

  @override
  String toString() {
    return 'PendingQuotesRouteArgs{key: $key, isCompany: $isCompany}';
  }
}

/// generated route for
/// [_i23.RateServiceView]
class RateServiceRoute extends _i27.PageRouteInfo<RateServiceRouteArgs> {
  RateServiceRoute({
    _i28.Key? key,
    required String quoteID,
    required String companyID,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          RateServiceRoute.name,
          args: RateServiceRouteArgs(
            key: key,
            quoteID: quoteID,
            companyID: companyID,
          ),
          initialChildren: children,
        );

  static const String name = 'RateServiceRoute';

  static const _i27.PageInfo<RateServiceRouteArgs> page =
      _i27.PageInfo<RateServiceRouteArgs>(name);
}

class RateServiceRouteArgs {
  const RateServiceRouteArgs({
    this.key,
    required this.quoteID,
    required this.companyID,
  });

  final _i28.Key? key;

  final String quoteID;

  final String companyID;

  @override
  String toString() {
    return 'RateServiceRouteArgs{key: $key, quoteID: $quoteID, companyID: $companyID}';
  }
}

/// generated route for
/// [_i24.RegisterAsCompanyView]
class RegisterAsCompanyRoute extends _i27.PageRouteInfo<void> {
  const RegisterAsCompanyRoute({List<_i27.PageRouteInfo>? children})
      : super(
          RegisterAsCompanyRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterAsCompanyRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i25.RegisterAsCustomerView]
class RegisterAsCustomerRoute extends _i27.PageRouteInfo<void> {
  const RegisterAsCustomerRoute({List<_i27.PageRouteInfo>? children})
      : super(
          RegisterAsCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterAsCustomerRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SplashView]
class SplashRoute extends _i27.PageRouteInfo<void> {
  const SplashRoute({List<_i27.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}
