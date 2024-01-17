import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/Controllers/RegisterController/RegisterAsCustomerEntityController.dart';
import 'package:his/Router/MyRoutes.gr.dart';

import '../../../../../utils/Providers/SvgProvider.dart';
import '../../../../../utils/Resouces/AssetsManager.dart';
import '../../../../../utils/Resouces/ColorManager.dart';
import '../../../../../utils/Resouces/StringsManager.dart';
import '../../../../../utils/Resouces/ValuesManager.dart';
import '../../../ExceptionHandler/AppException.dart';
import '../../../ExceptionHandler/MessageController.dart';
import '../../../ExceptionHandler/MessageTypes.dart';
import '../Data/Repositories/AuthController.dart';
import '../_CommonWidgets/AuthButton.dart';

@RoutePage()
class RegisterAsCustomerView extends ConsumerStatefulWidget {
  const RegisterAsCustomerView({super.key});

  @override
  ConsumerState createState() => _RegisterAsCustomerViewState();
}

class _RegisterAsCustomerViewState
    extends ConsumerState<RegisterAsCustomerView> {
  final TextEditingController emailTextEdtController = TextEditingController();
  final TextEditingController passwordTextEdtController =
      TextEditingController();
  final TextEditingController phoneTextEdtController = TextEditingController();
  final TextEditingController nameTextEdtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.surface,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * .1),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * .7,
                  child: ref
                      .watch(SvgLoaderProvider(ImageAssetsManager.logoIcon))),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingValuesManager.p20,
                ),
                child: Text("Register As A Customer",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const Divider(thickness: 1),
              const SizedBox(height: AppSizeManager.s20),
              TextFormField(
                  controller: nameTextEdtController,
                  onChanged: (value) => ref
                      .read(registerAsCustomerEntityControllerProvider.notifier)
                      .setName(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Name",
                      hintText: "Name",
                      errorText: ref.watch(
                          registerAsCustomerEntityControllerProvider
                              .select((value) => value.name.errorMsg)))),
              TextFormField(
                  controller: emailTextEdtController,
                  onChanged: (value) => ref
                      .read(registerAsCustomerEntityControllerProvider.notifier)
                      .setEmail(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Email",
                      hintText: "Email",
                      errorText: ref.watch(
                          registerAsCustomerEntityControllerProvider
                              .select((value) => value.email.errorMsg)))),
              TextFormField(
                  controller: phoneTextEdtController,
                  onChanged: (value) => ref
                      .read(registerAsCustomerEntityControllerProvider.notifier)
                      .setPhoneNumber(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Phone Number",
                      hintText: "Phone Number",
                      errorText: ref.watch(
                          registerAsCustomerEntityControllerProvider
                              .select((value) => value.phoneNumber.errorMsg)))),
              TextFormField(
                  controller: passwordTextEdtController,
                  onChanged: (value) => ref
                      .watch(
                          registerAsCustomerEntityControllerProvider.notifier)
                      .setPassword(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: "Password",
                      hintText: "Password",
                      errorText: ref.watch(
                          registerAsCustomerEntityControllerProvider
                              .select((value) => value.password.errorMsg)))),
              AuthButton(
                  text: StringManager.register,
                  onPressed: ref
                          .watch(registerAsCustomerEntityControllerProvider
                              .notifier)
                          .isValidInput
                      ? () => ref.read(authControllerProvider.notifier).signUp(
                          ref
                              .read(registerAsCustomerEntityControllerProvider)
                              .toRegisterCustomerReq())
                      : null),
            ],
          ),
        ),
      ),
    );
  }
}
