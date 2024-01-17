import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '_Controllers/RateController.dart';

@RoutePage()
class RateServiceView extends ConsumerStatefulWidget {
  final String quoteID;
  final String companyID;

  const RateServiceView(
      {super.key, required this.quoteID, required this.companyID});

  @override
  ConsumerState createState() => _RateServiceViewState();
}

class _RateServiceViewState extends ConsumerState<RateServiceView> {
  TextEditingController rateController = TextEditingController();
  String? errorValue;

  @override
  Widget build(BuildContext context) {
    ref.listen(rateControllerProvider, (previous, next) {
      next.whenData((value) {
        switch (value) {
          case true:
            ref
                .read(messageControllerProvider(context).notifier)
                .showToast(SuccessfulMessage("Successfully Rated Service"));
            context.router.pop();
            break;
          case false:
            ref
                .read(messageControllerProvider(context).notifier)
                .showToast(SuccessfulMessage("Failed to Rate For Some Reason"));
            break;
          case null:
        }
      });
    });
    return Scaffold(
      appBar: AppBar(
          title: Text("Rate Service",
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
              TextFormField(
                  controller: rateController,
                  onChanged: (value) {
                    setState(() {
                      var parsedValue = (double.tryParse(value) ?? -1);
                      parsedValue <= 5 && parsedValue > 0
                          ? errorValue = null
                          : errorValue = "Enter value between 1 and 5";
                    });
                  },
                  decoration: InputDecoration(
                      helperText: "",
                      labelText: "Ender Your Rate Out Of 5",
                      hintText: "Ender Your Rate Out Of 5",
                      errorText: errorValue)),
              ElevatedButton(
                  onPressed:
                      errorValue != null || rateController.value.text.isEmpty
                          ? null
                          : () async {
                              await ref
                                  .read(rateControllerProvider.notifier)
                                  .rateService(
                                      widget.quoteID,
                                      double.parse(rateController.value.text),
                                      widget.companyID);
                            },
                  child: const Text("Confirm Rate"))
            ],
          ),
        ),
      ),
    );
  }
}
