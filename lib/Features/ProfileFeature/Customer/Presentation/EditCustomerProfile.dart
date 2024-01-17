import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyEditInfoModel.dart';
import 'package:his/Features/ProfileFeature/_SharedControllers/EditConfirmationController.dart';
import 'package:his/Features/ProfileFeature/Customer/Presentation/Entities/CustomerEditEntity.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/StringsManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../Domain/CustomerEditModel.dart';
import 'Controller/CustomerProfileEditEntityController.dart';

@RoutePage()
class EditCustomerProfileView extends ConsumerStatefulWidget {
  final CustomerEditModel entity;

  const EditCustomerProfileView({super.key, required this.entity});

  @override
  ConsumerState createState() => _EditCustomerProfileViewState();
}

class _EditCustomerProfileViewState
    extends ConsumerState<EditCustomerProfileView> {
  @override
  Widget build(BuildContext context) {
    ref.listen(messageEmitterProvider, (previous, next) {
      if (next != null) {
        ref.read(MessageControllerProvider(context).notifier).showToast(next);
        if (next is SuccessfulMessage) {
          context.router.pop();
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
          title: Text("Edit Your Profile",
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
              TextFormField(
                  controller: ref.watch(
                      customerProfileEditEntityControllerProvider(widget.entity)
                          .select((value) => value.name.value)),
                  onChanged: (value) => ref
                      .read(customerProfileEditEntityControllerProvider(
                              widget.entity)
                          .notifier)
                      .setName(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Name",
                      hintText: "Name",
                      errorText: ref.watch(
                          customerProfileEditEntityControllerProvider(widget.entity)
                              .select((value) => value.name.errorMsg)))),
              TextFormField(
                controller: ref.watch(
                    customerProfileEditEntityControllerProvider(widget.entity)
                        .select((value) => value.phoneNumber.value)),
                onChanged: (value) => ref
                    .read(customerProfileEditEntityControllerProvider(
                            widget.entity)
                        .notifier)
                    .setNumber(value),
                decoration: InputDecoration(
                  helperText: StringManager.emptyStr,
                  labelText: "Phone Number",
                  hintText: "Phone Number",
                  errorText: ref.watch(
                    customerProfileEditEntityControllerProvider(widget.entity)
                        .select((value) => value.phoneNumber.errorMsg),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () async => await ref
                      .read(CustomerProfileEditEntityControllerProvider(
                              widget.entity)
                          .notifier)
                      .updateCustomerData(),
                  child: Text("Confirm"))
            ],
          ),
        ),
      ),
    );
  }
}
