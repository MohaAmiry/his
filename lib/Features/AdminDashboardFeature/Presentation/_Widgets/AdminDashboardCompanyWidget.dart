import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCompanyModel.dart';
import 'package:his/Features/AdminDashboardFeature/Presentation/Controllers/AdminDashboardCompanyController.dart';
import 'package:his/Router/MyRoutes.gr.dart';

import '../../../../utils/Resouces/ValuesManager.dart';

class AdminDashboardCompanyWidget extends ConsumerWidget {
  final AdminDashboardCompanyModel companyModel;

  const AdminDashboardCompanyWidget({super.key, required this.companyModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => context.router
          .push(CustomerCompanyProfileRoute(companyID: companyModel.companyID)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Company Name: ${companyModel.companyName}"),
              Text("Company Email: ${companyModel.email}"),
              Text("Company Services: ${companyModel.services}"),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Company State: ${companyModel.isActive ? "Active" : "Disabled"}"),
                  TextButton(
                      onPressed: () => ref
                          .read(
                              adminDashboardCompanyControllerProvider.notifier)
                          .changeCompanyState(
                              companyModel.companyID, !companyModel.isActive),
                      child: Text(
                          "${companyModel.isActive ? "Disable" : "Activate"} Company"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
