import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/utils/Resouces/ColorManager.dart';
import 'package:his/utils/Resouces/ThemeManager.dart';

import '../../../../../Router/MyRoutes.gr.dart';
import '../../../../../utils/Resouces/ValuesManager.dart';
import '../../../Domain/Requests/RequestModel.dart';

class CustomerQuoteWidget extends ConsumerWidget {
  final QuoteResponseModel quote;

  const CustomerQuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (quote.requestModel) {
      // TODO: Handle this case.
      DoorRequest() => buildDoorService(),
      // TODO: Handle this case.
      WindowRequest() => buildWindowService()
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
                Text("Company Name: ${quote.companyName}",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary)),
                Text("Estimated Price: ${quote.estimatedPrice}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ThemeManager.getElevatedButtonThemeSmall()
                          .style
                          ?.copyWith(
                              foregroundColor: const MaterialStatePropertyAll(
                                  ColorManager.primary)),
                      onPressed: () => context.router.push(
                          CustomerCompanyProfileRoute(
                              companyID: quote.companyID)),
                      child: Text("View Profile",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    ElevatedButton(
                        onPressed: () => context.pushRoute(ChatRoute(
                            otherID: quote.companyID,
                            otherName: quote.companyName)),
                        style: ThemeManager.getElevatedButtonThemeSmall()
                            .style
                            ?.copyWith(
                                backgroundColor: const MaterialStatePropertyAll(
                                    ColorManager.primary)),
                        child: Text("Chat With Company",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorManager.onPrimary)))
                  ],
                ),
                const Divider(),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ThemeManager.getElevatedButtonThemeSmall()
                          .style
                          ?.copyWith(
                              backgroundColor: const MaterialStatePropertyAll(
                                  ColorManager.secondary)),
                      onPressed: () => context.router.push(RateServiceRoute(
                          quoteID: quote.quoteID, companyID: quote.companyID)),
                      child: Text("Rate Service",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: ColorManager.onPrimary))),
                )
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
                    "Door Material: ${(quote.requestModel as DoorRequest).doorMaterial.name}"),
                Text(
                    "Handle Type: ${(quote.requestModel as DoorRequest).doorHandle.name}"),
                Text(
                    "Handle Color: ${(quote.requestModel as DoorRequest).handleColor.toString()}"),
                Text("Number of Units: ${quote.requestModel.units}"),
                const Divider(),
                Text("Company Name: ${quote.companyName}",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary)),
                Text("Estimated Price: ${quote.estimatedPrice}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ThemeManager.getElevatedButtonThemeSmall()
                          .style
                          ?.copyWith(
                              foregroundColor: const MaterialStatePropertyAll(
                                  ColorManager.primary)),
                      onPressed: () => context.pushRoute(
                          CustomerCompanyProfileRoute(
                              companyID: quote.companyID)),
                      child: Text("View Profile",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    ElevatedButton(
                        onPressed: () => context.pushRoute(ChatRoute(
                            otherID: quote.companyID,
                            otherName: quote.companyName)),
                        style: ThemeManager.getElevatedButtonThemeSmall()
                            .style
                            ?.copyWith(
                                backgroundColor: const MaterialStatePropertyAll(
                                    ColorManager.primary)),
                        child: Text("Chat With Company",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorManager.onPrimary)))
                  ],
                ),
                const Divider(),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ThemeManager.getElevatedButtonThemeSmall()
                          .style
                          ?.copyWith(
                              backgroundColor: const MaterialStatePropertyAll(
                                  ColorManager.secondary)),
                      onPressed: () => context.router.push(RateServiceRoute(
                          quoteID: quote.quoteID, companyID: quote.companyID)),
                      child: Text("Rate Service",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: ColorManager.onPrimary))),
                )
              ],
            ),
          ),
        ),
      );
}
