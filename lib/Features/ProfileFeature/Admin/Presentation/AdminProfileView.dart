import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Router/MyRoutes.gr.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';

@RoutePage()
class AdminProfileView extends ConsumerWidget {
  const AdminProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authControllerProvider, (previous, next) {
      next.whenData((value) {
        if (value is None) {
          ref
              .read(MessageControllerProvider(context).notifier)
              .showToast(SuccessfulMessage("Logged Out Successfully"));
          context.router.replaceAll([const LoginRoute()]);
        }
      });
    });
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Profile", style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Signed In As An Admin",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: AppSizeManager.s135,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () =>
                        ref.read(authControllerProvider.notifier).signOut(),
                    child: const Text("Logout")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
