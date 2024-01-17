import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AdminDashboardFeature/Presentation/_Widgets/AdminDashboardCustomerWidget.dart';

import '../../ErrorFeature/ErrorView.dart';
import '../../SplashFeature/LoadingView.dart';
import 'Controllers/AdminDashboardCustomerController.dart';

@RoutePage()
class AdminDashboardCustomerView extends ConsumerWidget {
  const AdminDashboardCustomerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async => await ref
          .read(adminDashboardCustomerControllerProvider.notifier)
          .refresh(),
      child: ref.watch(adminDashboardCustomerControllerProvider).when(
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => AdminDashboardCustomerWidget(
                  customerModel: data.elementAt(index)),
            ),
            error: (error, stackTrace) => ErrorView(error: error),
            loading: () => const LoadingView(),
          ),
    );
  }
}
