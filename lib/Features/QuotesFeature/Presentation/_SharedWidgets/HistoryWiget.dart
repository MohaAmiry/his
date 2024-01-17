import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/utils/Resouces/ColorManager.dart';
import 'package:his/utils/Resouces/ThemeManager.dart';

import '../../../../../Router/MyRoutes.gr.dart';
import '../../../../../utils/Resouces/ValuesManager.dart';
import '../../Domain/Requests/RequestModel.dart';

class HistoryWidget extends ConsumerWidget {
  final QuoteResponseModel quote;
  final UserRole role;

  const HistoryWidget({super.key, required this.quote, required this.role});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (quote.requestModel) {
      // TODO: Handle this case.
      DoorRequest() => buildDoorService(),
      // TODO: Handle this case.
      WindowRequest() => buildWindowService(),
    };
  }

  Widget buildWindowService() => Builder(
        builder: (context) => Card(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p10),
            child: Column(
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
                    Text(quote.date.toLocal().toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: ColorManager.secondary))
                  ],
                ),
                Text(
                    "Width: ${(quote.requestModel as WindowRequest).width} cm"),
                Text(
                    "height: ${(quote.requestModel as WindowRequest).height} cm"),
                Text(
                    "Window Material: ${(quote.requestModel as WindowRequest).windowMaterial.title}"),
                Text(
                    "Window Type: ${(quote.requestModel as WindowRequest).windowType.title}"),
                Text(
                    "Window Color: ${(quote.requestModel as WindowRequest).windowColor.toString()}"),
                Text("Number of Units: ${quote.requestModel.units}"),
                const Divider(),
                getUserSpecificContactData(context),
                const Divider(),
                getUserSpecificRateRow(context)
              ],
            ),
          ),
        ),
      );

  Widget buildDoorService() => Builder(
        builder: (context) => Card(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p10),
            child: Column(
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
                    Text(quote.date.toLocal().toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: ColorManager.secondary))
                  ],
                ),
                Text("Width: ${(quote.requestModel as DoorRequest).width} cm"),
                Text(
                    "height: ${(quote.requestModel as DoorRequest).height} cm"),
                Text(
                    "Door Material: ${(quote.requestModel as DoorRequest).doorMaterial.title}"),
                Text(
                    "Handle Type: ${(quote.requestModel as DoorRequest).doorHandle.title}"),
                Text(
                    "Handle Color: ${(quote.requestModel as DoorRequest).handleColor.toString()}"),
                Text("Number of Units: ${quote.requestModel.units}"),
                const Divider(),
                getUserSpecificContactData(context),
                const Divider(),
                getUserSpecificRateRow(context)
              ],
            ),
          ),
        ),
      );

  Widget getUserSpecificContactData(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          role is Customer
              ? Text(
                  "Company Name: ${quote.companyName}",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                )
              : Text(
                  "Customer Name: ${quote.customerName}",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                ),
          Text("Estimated Price: ${quote.estimatedPrice} SAR"),
        ],
      );

  Widget getUserSpecificRateRow(BuildContext context) => Row(
        mainAxisAlignment: role is Customer
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          Text("Rated This Service: ${quote.serviceRate}/5",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (role is Customer)
            ElevatedButton(
                onPressed: () => context.router.push(
                    CustomerCompanyProfileRoute(companyID: quote.companyID)),
                style: ThemeManager.getElevatedButtonThemeSmall()
                    .style
                    ?.copyWith(
                        backgroundColor: const MaterialStatePropertyAll(
                            ColorManager.secondary)),
                child: Text("View Profile",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorManager.onPrimary)))
        ],
      );
}
