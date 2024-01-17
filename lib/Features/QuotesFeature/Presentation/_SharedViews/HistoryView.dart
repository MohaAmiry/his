import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Features/QuotesFeature/Presentation/_SharedWidgets/HistoryWiget.dart';
import 'package:his/Features/SplashFeature/EmptyDataView.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../../utils/Resouces/ColorManager.dart';
import '../../../../../utils/Resouces/ValuesManager.dart';
import '../_SharedControllers/HistoryController.dart';

@RoutePage()
class HistoryView extends ConsumerWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async =>
          ref.read(historyControllerProvider.notifier).myRefresh(),
      child: Scaffold(
        appBar: AppBar(
            title: Text("Quotes History",
                style: Theme.of(context).textTheme.titleLarge)),
        backgroundColor: ColorManager.surface,
        body: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p20),
            child: ref.watch(historyControllerProvider).when(
                data: (data) => data.isEmpty
                    ? const EmptyDataView()
                    : ListView.builder(
                        itemCount: ref
                            .watch(historyControllerProvider)
                            .requireValue
                            .length,
                        itemBuilder: (context, index) => HistoryWidget(
                            quote: data.elementAt(index),
                            role: ref
                                .watch(authControllerProvider)
                                .requireValue)),
                error: (error, stackTrace) => ErrorView(error: error),
                loading: () =>
                    const Center(child: CircularProgressIndicator()))),
      ),
    );
  }
}
