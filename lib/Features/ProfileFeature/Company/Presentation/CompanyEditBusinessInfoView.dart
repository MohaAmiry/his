import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/ProfileFeature/Company/Presentation/Controller/CompanyEditBusinessEntityController.dart';
import 'package:his/Features/ProfileFeature/_SharedControllers/EditConfirmationController.dart';

import '../../../../ExceptionHandler/AppException.dart';
import '../../../../ExceptionHandler/MessageController.dart';
import '../../../../ExceptionHandler/MessageTypes.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/StringsManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../Domain/CompanyEditInfoModel.dart';

@RoutePage()
class CompanyEditBusinessInfoView extends ConsumerStatefulWidget {
  final CompanyEditBusinessInfoModel data;

  const CompanyEditBusinessInfoView({super.key, required this.data});

  @override
  ConsumerState createState() => _CompanyEditBusinessInfoViewState();
}

class _CompanyEditBusinessInfoViewState
    extends ConsumerState<CompanyEditBusinessInfoView> {
  @override
  Widget build(BuildContext context) {
    ref.listen(editConfirmationControllerProvider, (previous, next) {
      next.when(
          data: (data) {
            if (data) {
              ref.read(messageControllerProvider(context).notifier).showToast(
                  SuccessfulMessage("Successfully Updated Information"));
              context.router.pop();
            }
          },
          loading: () => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(PendingMessage("Pending Update")),
          error: (error, _) => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(
                  FailedMessage(AppException(message: error.toString()))));
    });
    return Scaffold(
      appBar: AppBar(
          title: Text("Edit Business Information",
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
              TextFormField(
                  controller: ref.watch(
                      CompanyEditBusinessEntityControllerProvider(widget.data)
                          .select((value) => value.name.value)),
                  onChanged: (value) => ref
                      .read(
                          companyEditBusinessEntityControllerProvider(widget.data)
                              .notifier)
                      .setName(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Business Official Name",
                      hintText: "Business Official Name",
                      errorText: ref.watch(
                          companyEditBusinessEntityControllerProvider(widget.data)
                              .select((value) => value.name.errorMsg)))),
              TextFormField(
                controller: ref.watch(
                    CompanyEditBusinessEntityControllerProvider(widget.data)
                        .select((value) => value.phoneNumber.value)),
                onChanged: (value) => ref
                    .watch(
                        companyEditBusinessEntityControllerProvider(widget.data)
                            .notifier)
                    .setNumber(value),
                decoration: InputDecoration(
                  helperText: StringManager.emptyStr,
                  labelText: "Phone Number",
                  hintText: "Phone Number",
                  errorText: ref.watch(
                    companyEditBusinessEntityControllerProvider(widget.data)
                        .select((value) => value.phoneNumber.errorMsg),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: ref
                          .watch(companyEditBusinessEntityControllerProvider(
                                  widget.data)
                              .notifier)
                          .isValidInput
                      ? () => ref
                          .read(editConfirmationControllerProvider.notifier)
                          .updateData(ref
                              .read(companyEditBusinessEntityControllerProvider(
                                      widget.data)
                                  .notifier)
                              .getEditModel())
                      : null,
                  child: Text("Confirm"))
            ],
          ),
        ),
      ),
    );
  }
}
