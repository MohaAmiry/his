import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Router/MyRoutes.gr.dart';

import '../../../../ExceptionHandler/AppException.dart';
import '../../../../ExceptionHandler/MessageController.dart';
import '../../../../ExceptionHandler/MessageTypes.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../Domain/Requests/RequestModel.dart';
import '_Controllers/AddQuoteDealController.dart';
import '_Widgets/CompanyOfferWidget.dart';

@RoutePage()
class AddQuoteDealSelectionView extends ConsumerWidget {
  final RequestModel requestModel;
  const AddQuoteDealSelectionView({super.key, required this.requestModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(dealSelectionControllerProvider, (previous, next) {
      next.whenOrNull(
          data: (data) {
            if (data != null) {
              ref
                  .read(messageControllerProvider(context).notifier)
                  .showToast(SuccessfulMessage("Accepted The Offer"));
              context.router.popUntil(
                  (route) => route.data?.name == CustomerQuotesRoute.name);
            }
          },
          loading: () => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(PendingMessage("Pending Acceptance")),
          error: (error, _) => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(
                  FailedMessage(AppException(message: error.toString()))));
    });
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Select Deal", style: Theme.of(context).textTheme.titleLarge),
      ),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
              switch (requestModel) {
                DoorRequest() =>
                  buildDoorService((requestModel as DoorRequest)),
                WindowRequest() =>
                  buildWindowService((requestModel as WindowRequest)),
              },
              ref
                  .watch(
                    AddQuoteDealControllerProvider(requestModel),
                  )
                  .when(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => CompanyOfferWidget(
                          offerModel: data.elementAt(index),
                        ),
                      );
                    },
                    error: (error, stackTrace) => ErrorView(error: error),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWindowService(WindowRequest windowRequest) => Builder(
        builder: (context) => Card(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Window Request",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                ),
                Text("Width: ${windowRequest.width} cm"),
                Text("height: ${windowRequest.height} cm"),
                Text("Window Material: ${windowRequest.windowMaterial.title}"),
                Text("Window Type: ${windowRequest.windowType.title}"),
                Text("Window Color: ${windowRequest.windowColor.toString()}"),
                Text("Number of Units: ${windowRequest.units}"),
              ],
            ),
          ),
        ),
      );

  Widget buildDoorService(DoorRequest door) => Builder(
        builder: (context) => Card(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Door Request",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.secondary),
                ),
                Text("Width: ${door.width} cm"),
                Text("height: ${door.height} cm"),
                Text("Door Material: ${door.doorMaterial.title}"),
                Text("Handle Type: ${door.doorHandle.title}"),
                Text("Handle Color: ${door.handleColor}"),
                Text("Number of Units: ${door.units}")
              ],
            ),
          ),
        ),
      );
}
