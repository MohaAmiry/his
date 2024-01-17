import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../Router/MyRoutes.gr.dart';
import '../../../../../utils/Resouces/ColorManager.dart';
import '../../../../../utils/Resouces/ThemeManager.dart';
import '../../../../../utils/Resouces/ValuesManager.dart';
import '../../../Domain/OfferModel.dart';
import '../_Controllers/AddQuoteDealController.dart';

class CompanyOfferWidget extends ConsumerWidget {
  final OfferModel offerModel;

  const CompanyOfferWidget({super.key, required this.offerModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(PaddingValuesManager.p10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Company Name: ${offerModel.companyName}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: ColorManager.secondary),
            ),
            Text("Estimated Price: ${offerModel.estimatedPrice} SAR"),
            Text("company Rate: ${offerModel.companyRate}/5"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ThemeManager.getElevatedButtonThemeSmall()
                      .style
                      ?.copyWith(
                        foregroundColor: const MaterialStatePropertyAll(
                            ColorManager.primary),
                      ),
                  onPressed: () => context.router.push(
                      CustomerCompanyProfileRoute(
                          companyID: offerModel.companyID)),
                  child: Text("View Profile",
                      style: Theme.of(context).textTheme.bodySmall),
                ),
                ElevatedButton(
                  onPressed:
                      ref.watch(dealSelectionControllerProvider).isLoading
                          ? null
                          : () => ref
                              .read(dealSelectionControllerProvider.notifier)
                              .selectDeal(offerModel),
                  child: Text(
                    "Accept This Deal",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorManager.onPrimary),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
