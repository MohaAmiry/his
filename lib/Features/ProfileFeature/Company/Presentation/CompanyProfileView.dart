import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../Router/MyRoutes.gr.dart';
import '../../../../utils/Providers/SvgProvider.dart';
import '../../../../utils/Resouces/AssetsManager.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../../AuthenticationFeature/Data/Repositories/AuthController.dart';
import '../../../AuthenticationFeature/Domain/User/UserRole.dart';
import '../../../AuthenticationFeature/_CommonWidgets/AuthButton.dart';
import '../../../ErrorFeature/ErrorView.dart';
import '../../../_SharedDomain/Services/Service.dart';
import '../../../_SharedDomain/Users/UsersResponses.dart';
import 'Controller/CompanyProfileController.dart';
@RoutePage()
class CompanyProfileView extends ConsumerWidget {
  const CompanyProfileView({super.key});

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
          child: ref.watch(companyProfileControllerProvider).when(
              data: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Signed In As Company",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text("My Rate: ${data.rate}/5"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Business Information",
                              style: Theme.of(context).textTheme.titleMedium),
                          IconButton(
                            onPressed: () => context.router.push(
                                CompanyEditBusinessInfoRoute(data: (
                              name: data.name,
                              phoneNumber: data.number
                            ))),
                            icon: SizedBox(
                              width: AppSizeManager.s20,
                              height: AppSizeManager.s20,
                              child: ref.read(
                                SvgLoaderProvider(ImageAssetsManager.edit,
                                    colored: true),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text("Business Official Name: ${data.name}"),
                      Text("Phone Number: ${data.number}"),
                      Text("Email: ${data.email}"),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Services",
                              style: Theme.of(context).textTheme.titleMedium),
                          IconButton(
                            onPressed: () async {
                              context.router.push(CompanyEditServicesRoute(
                                  services: data.services));
                            },
                            icon: SizedBox(
                              width: AppSizeManager.s20,
                              height: AppSizeManager.s20,
                              child: ref.read(
                                SvgLoaderProvider(ImageAssetsManager.edit,
                                    colored: true),
                              ),
                            ),
                          )
                        ],
                      ),
                      if (data.services.keys.contains(CompanyService.door) &&
                          data.services.entries
                                  .where((element) =>
                                      element.key == CompanyService.door)
                                  .first
                                  .value
                                  .selection ==
                              true)
                        buildForDoor(data, context),
                      if (data.services.keys.contains(CompanyService.window) &&
                          data.services.entries
                                  .where((element) =>
                                      element.key == CompanyService.window)
                                  .first
                                  .value
                                  .selection ==
                              true)
                        buildForWindow(data, context),
                      const SizedBox(height: AppSizeManager.s20),
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

  Widget buildForDoor(
      CompanyResponseModel companyProfile, BuildContext context) {
    var doorCategories = companyProfile.services.entries
        .where((element) => element.key == CompanyService.door)
        .first
        .value
        .categories
        .entries
        .toList();
    var doorMaterials = doorCategories[0].value.materials.entries.toList();
    var doorHandles = doorCategories[1].value.materials.entries.toList();
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Doors",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: ColorManager.secondary)),
          Text("Door Materials",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (doorMaterials[0].value.selected)
            Text(
                "${doorMaterials[0].value.materialName.title}: ${doorMaterials[0].value.price} SAR"),
          if (doorMaterials[1].value.selected)
            Text(
                "${doorMaterials[1].value.materialName.title}: ${doorMaterials[1].value.price} SAR"),
          Text("Door Handles",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (doorHandles[0].value.selected)
            Text(
                "${doorHandles[0].value.materialName.title}: ${doorHandles[0].value.price} SAR"),
          if (doorHandles[1].value.selected)
            Text(
                "${doorHandles[1].value.materialName.title}: ${doorHandles[1].value.price} SAR"),
        ]);
  }

  Widget buildForWindow(
      CompanyResponseModel companyProfile, BuildContext context) {
    var windowCategories = companyProfile.services.entries
        .where((element) => element.key == CompanyService.window)
        .first
        .value
        .categories
        .entries
        .toList();
    var windowMaterials = windowCategories[0].value.materials.entries.toList();
    var windowGlass = windowCategories[1].value.materials.entries.toList();
    var windowType = windowCategories[2].value.materials.entries.toList();
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Windows",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: ColorManager.secondary)),
          Text("Window Materials",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (windowMaterials[0].value.selected)
            Text(
                "${windowMaterials[0].value.materialName.title}: ${windowMaterials[0].value.price} SAR"),
          if (windowMaterials[1].value.selected)
            Text(
                "${windowMaterials[1].value.materialName.title}: ${windowMaterials[1].value.price} SAR"),
          Text("Window Glass",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (windowGlass[0].value.selected)
            Text(
                "${windowGlass[0].value.materialName.title}: ${windowGlass[0].value.price} SAR"),
          if (windowGlass[1].value.selected)
            Text(
                "${windowGlass[1].value.materialName.title}: ${windowGlass[1].value.price} SAR"),
          Text("Window Type",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (windowType[0].value.selected)
            Text(
                "${windowType[0].value.materialName.title}: x${windowType[0].value.price} Multiplier"),
          if (windowType[1].value.selected)
            Text(
                "${windowType[1].value.materialName.title}: x${windowType[1].value.price} Multiplier"),
        ]);
  }
}
