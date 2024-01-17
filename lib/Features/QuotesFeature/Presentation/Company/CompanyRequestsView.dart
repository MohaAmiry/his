import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/SplashFeature/EmptyDataView.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../../ErrorFeature/ErrorView.dart';
import '../_SharedControllers/PendingQuotesController.dart';
import '../_SharedWidgets/PendingQuoteWidget.dart';

@RoutePage()
class CompanyCustomerPendingView extends ConsumerWidget {
  const CompanyCustomerPendingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async =>await ref.read(pendingQuotesControllerProvider.notifier).myRefresh(),
      child: Scaffold(
        appBar: AppBar(
            title: Text("Customer Pending Quotes",
                style: Theme.of(context).textTheme.titleLarge)),
        backgroundColor: ColorManager.surface,
        body: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: ref.watch(pendingQuotesControllerProvider).when(
                data: (data) {
                  return data.isEmpty
                      ? const EmptyDataView()
                      : ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) => PendingQuoteWidget(
                            quoteModel: data.elementAt(index),
                            companyData: null,
                            customerData: (
                                    customerName:
                                        data.elementAt(index).customerName,
                                    serviceRate:
                                        data.elementAt(index).serviceRate
                                  )
                          ),
                        );
                },
                error: (error, stackTrace) => ErrorView(error: error),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
        ),
      ),
    );
  }
}
