import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import '../../../ExceptionHandler/AppException.dart';
import '../../../Router/MyRoutes.gr.dart';
import '../../../utils/Providers/SvgProvider.dart';
import '../../../utils/Resouces/AssetsManager.dart';
import '../../../utils/Resouces/ColorManager.dart';
import '../../../utils/Resouces/StringsManager.dart';
import '../../../utils/Resouces/ValuesManager.dart';
import '../Data/Repositories/AuthController.dart';
import '../_CommonWidgets/AuthButton.dart';
import 'Controllers/LoginController/LoginEntityController.dart';

@RoutePage()
class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final TextEditingController emailTextEdtController = TextEditingController();
  final TextEditingController passwordTextEdtController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref
      ..listen<AsyncValue<UserRole>>(authControllerProvider, (previous, next) {
        next.whenData((data) {
          if (data is! None) {
            switch (data) {
              case Admin():
                context.router.replace(const AdminNavigationScaffoldRoute());
                break;
              case Company():
                context.router.replace(const CompanyNavigationScaffoldRoute());
                break;
              case Customer():
                context.router.replace(const CustomerNavigationScaffoldRoute());
                break;
              default:
            }
          }
        });
      })
      ..listen(messageEmitterProvider, (previous, next) {
        next != null
            ? ref
                .read(MessageControllerProvider(context).notifier)
                .showToast(next)
            : null;
      });

    return Scaffold(
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * .1),
              ref.watch(SvgLoaderProvider(ImageAssetsManager.logoIcon)),
              const SizedBox(height: AppSizeManager.s45),
              Text(
                StringManager.login,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizeManager.s45),
              TextFormField(
                  controller: emailTextEdtController,
                  onChanged: (value) => ref
                      .read(loginEntityControllerProvider.notifier)
                      .setEmail(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: StringManager.email,
                      hintText: StringManager.email,
                      errorText: ref.watch(loginEntityControllerProvider
                          .select((value) => value.email.errorMsg)))),
              TextFormField(
                  controller: passwordTextEdtController,
                  onChanged: (value) => ref
                      .read(loginEntityControllerProvider.notifier)
                      .setPassword(value),
                  decoration: InputDecoration(
                      helperText: StringManager.emptyStr,
                      labelText: StringManager.password,
                      hintText: StringManager.password,
                      errorText: ref.watch(loginEntityControllerProvider
                          .select((value) => value.password.errorMsg)))),
              AuthButton(
                  text: StringManager.login,
                  onPressed: ref
                          .watch(loginEntityControllerProvider.notifier)
                          .isValidInput
                      ? () async => await ref
                          .read(authControllerProvider.notifier)
                          .signIn(emailTextEdtController.value.text,
                              passwordTextEdtController.value.text)
                      : null),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: PaddingValuesManager.p10),
                  child: TextButton(
                      onPressed: () {
                        context.router.push(const RegisterAsCustomerRoute());
                      },
                      child: const Text("Register As a Customer"))),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: PaddingValuesManager.p10),
                child: TextButton(
                    onPressed: () =>
                        context.router.push(const RegisterAsCompanyRoute()),
                    child: const Text("Register As a Company")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
