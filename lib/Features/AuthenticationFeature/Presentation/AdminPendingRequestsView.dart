import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/Controllers/AdminController/AdminPendingRequestsController.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/_Widgets/RegisterRequestWidget.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Features/SplashFeature/EmptyDataView.dart';
import 'package:his/Features/SplashFeature/LoadingView.dart';
import 'package:his/utils/Extensions.dart';
import 'package:his/utils/Resouces/ColorManager.dart';

@RoutePage()
class AdminPendingRequestsView extends ConsumerWidget {
  const AdminPendingRequestsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(messageEmitterProvider, (previous, next) {
      next != null
          ? ref
              .read(MessageControllerProvider(context).notifier)
              .showToast(next)
          : null;
    });
    return Scaffold(
      appBar: AppBar(
          title: Text("Pending Registration Requests",
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: RefreshIndicator(
        onRefresh: () async => await ref
            .read(adminPendingRequestsControllerProvider.notifier)
            .myRefresh,
        child: ref.watch(adminPendingRequestsControllerProvider).when(
            data: (data) => data.isEmpty
                ? const EmptyDataView()
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) => RegisterRequestWidget(
                        companyModel: data.elementAt(index)),
                  ),
            error: (error, stackTrace) => ErrorView(error: error),
            loading: () => const LoadingView()),
      ),
    );
  }
}
