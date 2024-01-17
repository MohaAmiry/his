import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/Controllers/AdminController/AdminPendingRequestsController.dart';
import 'package:his/Features/_SharedDomain/Services/Service.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';

import '../../../../utils/Providers/SvgProvider.dart';
import '../../../../utils/Resouces/AssetsManager.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';

class RegisterRequestWidget extends ConsumerWidget {
  final CompanyResponseModel companyModel;

  const RegisterRequestWidget({super.key, required this.companyModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(PaddingValuesManager.p10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("General Company Data",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: ColorManager.secondary)),
                IconButton(
                    onPressed: () => ref
                        .read(adminPendingRequestsControllerProvider.notifier)
                        .rejectCompany(companyModel.companyID),
                    icon: SizedBox(
                        width: AppSizeManager.s20,
                        height: AppSizeManager.s20,
                        child: ref.read(svgLoaderProvider(
                            ImageAssetsManager.remove,
                            colored: true,
                            red: true))))
              ],
            ),
            Text("Company Name: ${companyModel.name}"),
            Text("Company Email: ${companyModel.email}"),
            Text("Phone Number: ${companyModel.number}"),
            const Divider(),
            Align(
              alignment: Alignment.center,
              child: Text("Services",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: ColorManager.secondary)),
            ),
            if (companyModel.services.keys.contains(CompanyService.door) &&
                companyModel.services.entries
                        .where((element) => element.key == CompanyService.door)
                        .first
                        .value
                        .selection ==
                    true)
              buildForDoor(companyModel, context),
            if (companyModel.services.keys.contains(CompanyService.window) &&
                companyModel.services.entries
                        .where(
                            (element) => element.key == CompanyService.window)
                        .first
                        .value
                        .selection ==
                    true)
              buildForWindow(companyModel, context),
            const Divider(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () => ref
                      .read(adminPendingRequestsControllerProvider.notifier)
                      .activateUser(companyModel.companyID),
                  child: Text("Accept Company")),
            )
          ],
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
