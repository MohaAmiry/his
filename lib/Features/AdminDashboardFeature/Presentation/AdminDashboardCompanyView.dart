import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AdminDashboardFeature/Presentation/_Widgets/AdminDashboardCompanyWidget.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Features/SplashFeature/LoadingView.dart';

import 'Controllers/AdminDashboardCompanyController.dart';

@RoutePage()
class AdminDashboardCompanyView extends ConsumerWidget {
  const AdminDashboardCompanyView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async => await ref
          .read(adminDashboardCompanyControllerProvider.notifier)
          .refresh(),
      child: ref.watch(adminDashboardCompanyControllerProvider).when(
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => AdminDashboardCompanyWidget(
                  companyModel: data.elementAt(index)),
            ),
            error: (error, stackTrace) => ErrorView(error: error),
            loading: () => const LoadingView(),
          ),
    );
  }
}
