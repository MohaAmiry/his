import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/Router/MyRoutes.gr.dart';

import '../../../utils/Resouces/ColorManager.dart';
import '../../../utils/Resouces/ValuesManager.dart';

@RoutePage()
class AdminDashboardView extends ConsumerWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(messageEmitterProvider, (previous, next) {
      next != null
          ? ref
              .read(MessageControllerProvider(context).notifier)
              .showToast(next)
          : null;
    });
    return AutoTabsRouter.tabBar(
      routes: const [
        AdminDashboardCompanyRoute(),
        AdminDashboardCustomerRoute()
      ],
      builder: (context, child, controller) {
        return Scaffold(
          backgroundColor: ColorManager.surface,
          appBar: AppBar(
            title: const Text("System Users"),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'Companies'),
                Tab(text: 'Customers'),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p20),
            child: child,
          ),
        );
      },
    );

    Scaffold(
        appBar: AppBar(
            title: Text("Customer Pending Quotes",
                style: Theme.of(context).textTheme.titleLarge)),
        backgroundColor: ColorManager.surface,
        body: AutoTabsRouter.tabBar(routes: []));
  }
}
