import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyProfile.dart';
import 'package:his/Features/_SharedDomain/Services/Service.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../Company/Presentation/Controller/ProfileDataProviders.dart';

@RoutePage()
class CustomerCompanyProfileView extends ConsumerWidget {
  final String companyID;

  const CustomerCompanyProfileView({super.key, required this.companyID});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Company Profile",
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: ref.watch(companyProfileDataProvider(companyID)).when(
              data: (data) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(PaddingValuesManager.p10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("General Company Data",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: ColorManager.secondary)),
                          Text("Company Name: ${data.name}"),
                          Text("Company Email: ${data.email}"),
                          Text("Phone Number: ${data.number}"),
                          Text("Rate: ${data.rate}/5"),
                          const Divider(),
                          Align(
                            alignment: Alignment.center,
                            child: Text("Services",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: ColorManager.secondary)),
                          ),
                          if (data.services.keys
                                  .contains(CompanyService.door) &&
                              data.services.entries
                                      .where((element) =>
                                          element.key == CompanyService.door)
                                      .first
                                      .value
                                      .selection ==
                                  true)
                            buildForDoor(data, context),
                          if (data.services.keys
                                  .contains(CompanyService.window) &&
                              data.services.entries
                                      .where((element) =>
                                          element.key == CompanyService.window)
                                      .first
                                      .value
                                      .selection ==
                                  true)
                            buildForWindow(data, context)
                        ],
                      ),
                    ),
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
                "${doorMaterials[0].value.materialName.title}: ${doorMaterials[0].value.price} SAR per CM"),
          if (doorMaterials[1].value.selected)
            Text(
                "${doorMaterials[1].value.materialName.title}: ${doorMaterials[1].value.price} SAR per CM"),
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
                "${windowMaterials[0].value.materialName.title}: ${windowMaterials[0].value.price} SAR per CM"),
          if (windowMaterials[1].value.selected)
            Text(
                "${windowMaterials[1].value.materialName.title}: ${windowMaterials[1].value.price} SAR per CM"),
          Text("Window Glass",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: ColorManager.secondary)),
          if (windowGlass[0].value.selected)
            Text(
                "${windowGlass[0].value.materialName.title}: ${windowGlass[0].value.price} SAR per CM"),
          if (windowGlass[1].value.selected)
            Text(
                "${windowGlass[1].value.materialName.title}: ${windowGlass[1].value.price} SAR per CM"),
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
