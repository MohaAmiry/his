import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/SplashFeature/EmptyDataView.dart';
import 'package:his/Router/MyRoutes.gr.dart';
import 'package:his/utils/Extensions.dart';
import 'package:his/utils/Resouces/AssetsManager.dart';
import 'package:his/utils/Resouces/ThemeManager.dart';

import '../../../../utils/Providers/SvgProvider.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../_SharedControllers/AcceptedQuotesController.dart';
import '_Widgets/CustomerQuoteWidget.dart';

@RoutePage()
class CustomerQuotesView extends ConsumerStatefulWidget {
  const CustomerQuotesView({super.key});

  @override
  ConsumerState createState() => _CustomerHomeViewState();
}

class _CustomerHomeViewState extends ConsumerState<CustomerQuotesView> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          ref.read(acceptedQuotesControllerProvider.notifier).myRefresh(),
      child: Scaffold(
        appBar: AppBar(
            title: Text("My Quotes",
                style: Theme.of(context).textTheme.titleLarge)),
        backgroundColor: ColorManager.surface,
        body: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                      style: ThemeManager.getElevatedButtonThemeSmall().style,
                      icon: SizedBox(
                        width: AppSizeManager.s20,
                        height: AppSizeManager.s20,
                        child: ref.read(SvgLoaderProvider(
                            ImageAssetsManager.addRequest,
                            colored: true)),
                      ),
                      onPressed: () =>
                          context.router.push(const AddQuoteRoute()),
                      label: Text("Add Request",
                          style: Theme.of(context).textTheme.bodySmall)),
                  ElevatedButton.icon(
                      style: ThemeManager.getElevatedButtonThemeSmall().style,
                      icon: SizedBox(
                        width: AppSizeManager.s20,
                        height: AppSizeManager.s20,
                        child: ref.read(SvgLoaderProvider(
                            ImageAssetsManager.pendingRequests,
                            colored: true)),
                      ),
                      onPressed: () => context.router
                          .push(PendingQuotesRoute(isCompany: false)),
                      label: Text("Pending Requests",
                          style: Theme.of(context).textTheme.bodySmall)),
                ],
              ),
              ref.watch(acceptedQuotesControllerProvider).when(
                  data: (data) => data.isEmpty
                      ? const Expanded(child: EmptyDataView())
                      : ListView.builder(
                          itemCount: data.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              CustomerQuoteWidget(quote: data[index])),
                  error: (error, stackTrace) => Center(
                        child: Text("error Happened: ${error.toString()}"),
                      ),
                  loading: () => const CircularProgressIndicator())
            ],
          ),
        ),
      ),
    );
  }
}
