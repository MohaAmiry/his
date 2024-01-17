import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/SplashFeature/EmptyDataView.dart';
import 'package:his/Features/SplashFeature/LoadingView.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../_SharedControllers/AcceptedQuotesController.dart';
import '_Widgets/CompanyAcceptedQuoteWidget.dart';

@RoutePage()
class CompanyAcceptedQuotesView extends ConsumerWidget {
  const CompanyAcceptedQuotesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async =>
          ref.read(acceptedQuotesControllerProvider.notifier).myRefresh(),
      child: Scaffold(
          appBar: AppBar(
              title: Text("Accepted Quotes",
                  style: Theme.of(context).textTheme.titleLarge)),
          backgroundColor: ColorManager.surface,
          body: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p20),
            child: ref.watch(acceptedQuotesControllerProvider).when(
                data: (data) {
                  return data.isEmpty
                      ? const EmptyDataView()
                      : ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) =>
                              CompanyAcceptedQuoteWidget(quote: data[index]));
                },
                error: (error, stackTrace) => Center(
                      child: Text("error Happened: ${error.toString()}"),
                    ),
                loading: () => const LoadingView()),
          )),
    );
  }
}
