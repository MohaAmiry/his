import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/Router/MyRoutes.gr.dart';
import 'package:his/utils/Providers/SvgProvider.dart';
import 'package:his/utils/Resouces/AssetsManager.dart';
import 'package:his/utils/Resouces/ColorManager.dart';
import 'package:his/utils/Resouces/ThemeManager.dart';

import '../../../../utils/Resouces/ValuesManager.dart';
import '../../../AuthenticationFeature/_Constants/CompanyServices.dart';
import '../../Domain/Requests/RequestModel.dart';
import '../_SharedControllers/PendingQuotesController.dart';

class PendingQuoteWidget extends ConsumerWidget {
  final ({String companyName, double companyRate})? companyData;
  final ({String customerName, double serviceRate})? customerData;
  final QuoteResponseModel quoteModel;

  const PendingQuoteWidget(
      {super.key,
      required this.quoteModel,
      this.companyData,
      this.customerData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              switch (quoteModel.requestModel) {
                DoorRequest() => buildDoor(
                    context, quoteModel.requestModel as DoorRequest, ref),
                WindowRequest() => buildWindow(
                    context, quoteModel.requestModel as WindowRequest, ref)
              },
              const Divider(),
              if (companyData != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Company Name: ${companyData!.companyName}"),
                    Text("Company Rate: ${companyData!.companyRate}/5")
                  ],
                )
              else
                Text("Customer Name: ${customerData!.customerName}"),
              Text("Estimated Price: ${quoteModel.estimatedPrice} SAR"),
              if (companyData != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ThemeManager.getElevatedButtonThemeSmall()
                        .style
                        ?.copyWith(
                            foregroundColor: const MaterialStatePropertyAll(
                                ColorManager.primary)),
                    onPressed: () => context.router.push(
                        CustomerCompanyProfileRoute(
                            companyID: quoteModel.companyID)),
                    child: Text("View Profile",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                )
              else
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () => ref
                          .read(pendingQuotesControllerProvider.notifier)
                          .acceptQuote(quoteModel.quoteID),
                      style: ThemeManager.getElevatedButtonThemeSmall()
                          .style
                          ?.copyWith(
                              backgroundColor: const MaterialStatePropertyAll(
                                  ColorManager.primary)),
                      child: Text("Accept Quote",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: ColorManager.onPrimary))),
                )
            ],
          )),
    );
  }

  Widget buildWindow(
          BuildContext context, WindowRequest request, WidgetRef ref) =>
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Window Request",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                ),
                if (customerData == null)
                  Text(
                    "Pending Acceptance",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary),
                  )
                else
                  IconButton(
                      onPressed: () => ref
                          .read(pendingQuotesControllerProvider.notifier)
                          .rejectQuote(quoteModel.quoteID),
                      icon: SizedBox(
                          width: AppSizeManager.s20,
                          height: AppSizeManager.s20,
                          child: ref.read(SvgLoaderProvider(
                              ImageAssetsManager.remove,
                              colored: true,
                              red: true))))
              ],
            ),
            Text("Width: ${request.width} cm"),
            Text("Height: ${request.height} cm"),
            Text("Window Material: ${request.windowMaterial.title}"),
            Text("Window Glass: ${request.windowGlassType.title}"),
            Text("Window Type: ${request.windowType.title}"),
            Text("Window Color: ${request.windowColor}"),
            Text("Units: ${request.units}"),
          ]);

  Widget buildDoor(BuildContext context, DoorRequest request, WidgetRef ref) =>
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Door Request",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                ),
                if (customerData == null)
                  Text(
                    "Pending Acceptance",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary),
                  )
                else
                  IconButton(
                      onPressed: () => ref
                          .read(pendingQuotesControllerProvider.notifier)
                          .rejectQuote(quoteModel.quoteID),
                      icon: SizedBox(
                          width: AppSizeManager.s20,
                          height: AppSizeManager.s20,
                          child: ref.read(SvgLoaderProvider(
                              ImageAssetsManager.remove,
                              colored: true,
                              red: true))))
              ],
            ),
            Text("Width: ${request.width} cm"),
            Text("Height: ${request.height} cm"),
            Text("Door Material: ${request.doorMaterial.title}"),
            Text("Handle Type: ${request.doorHandle.title}"),
            Text("Handle Color: ${request.handleColor}"),
            Text("Units: ${request.units}"),
          ]);
}
