import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Features/ProfileFeature/Customer/Presentation/Controller/CustomerProfileController.dart';
import 'package:his/Features/ProfileFeature/Customer/Presentation/Entities/CustomerEditEntity.dart';
import 'package:his/Router/MyRoutes.gr.dart';
import 'package:his/utils/Providers/SvgProvider.dart';
import 'package:his/utils/Resouces/AssetsManager.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../../AuthenticationFeature/_CommonWidgets/AuthButton.dart';

@RoutePage()
class CustomerProfileView extends ConsumerWidget {
  const CustomerProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authControllerProvider, (previous, next) {
      next.whenData((value) {
        if (value is None) context.router.replaceAll([const LoginRoute()]);
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
          child: ref.watch(customerProfileControllerProvider).when(
              data: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Signed In As Customer",
                          style: Theme.of(context).textTheme.titleMedium),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Personal Information",
                              style: Theme.of(context).textTheme.titleMedium),
                          IconButton(
                              onPressed: () {
                                context.router.push(EditCustomerProfileRoute(
                                    entity: (
                                      name: data.name,
                                      phoneNumber: data.number
                                    )));
                              },
                              icon: SizedBox(
                                width: AppSizeManager.s20,
                                height: AppSizeManager.s20,
                                child: ref.read(SvgLoaderProvider(
                                    ImageAssetsManager.edit,
                                    colored: true)),
                              ))
                        ],
                      ),
                      Text("Name: ${data.name}"),
                      Text("Phone Number: ${data.number}"),
                      Text("Email: ${data.email}"),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5),
                      Align(
                        alignment: Alignment.center,
                        child: AuthButton(
                            text: "Logout",
                            onPressed: () => ref
                                .read(authControllerProvider.notifier)
                                .signOut()),
                      ),
                    ],
                  ),
              error: (error, stackTrace) => ErrorView(error: error),
              loading: () => const Center(child: CircularProgressIndicator())),
        ),
      ),
    );
  }
}
