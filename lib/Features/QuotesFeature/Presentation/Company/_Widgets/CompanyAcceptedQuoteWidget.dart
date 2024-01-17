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

class CompanyAcceptedQuoteWidget extends ConsumerWidget {
  final QuoteResponseModel quote;

  const CompanyAcceptedQuoteWidget({super.key, required this.quote});

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
                    "Window Material: ${(quote.requestModel as WindowRequest).windowMaterial.name}"),
                Text(
                    "Window Type: ${(quote.requestModel as WindowRequest).windowType.name}"),
                Text(
                    "Window Color: ${(quote.requestModel as WindowRequest).windowColor.toString()}"),
                Text("Number of Units: ${quote.requestModel.units}"),
                const Divider(),
                Text("Customer Name: ${quote.customerName}",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary)),
                Text("Estimated Price: ${quote.estimatedPrice}"),
                const Divider(),
                Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () => context.pushRoute(ChatRoute(
                            otherID: quote.customerID,
                            otherName: quote.customerName)),
                        style: ThemeManager.getElevatedButtonThemeSmall()
                            .style
                            ?.copyWith(
                                backgroundColor: const MaterialStatePropertyAll(
                                    ColorManager.primary)),
                        child: Text("Chat With Customer",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorManager.onPrimary))))
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
                Text("Customer Name: ${quote.customerName}",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.secondary)),
                Text("Estimated Price: ${quote.estimatedPrice}"),
                const Divider(),
                Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () => context.pushRoute(ChatRoute(
                            otherID: quote.customerID,
                            otherName: quote.customerName)),
                        style: ThemeManager.getElevatedButtonThemeSmall()
                            .style
                            ?.copyWith(
                                backgroundColor: const MaterialStatePropertyAll(
                                    ColorManager.primary)),
                        child: Text("Chat With Customer",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorManager.onPrimary))))
              ],
            ),
          ),
        ),
      );
}
