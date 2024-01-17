import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCustomerModel.dart';
import 'package:his/utils/Resouces/ValuesManager.dart';

class AdminDashboardCustomerWidget extends ConsumerWidget {
  final AdminDashboardCustomerModel customerModel;

  const AdminDashboardCustomerWidget({super.key, required this.customerModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(PaddingValuesManager.p10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Customer Name: ${customerModel.customerName}"),
            Text("Customer Email: ${customerModel.email}"),
            Text("Customer Phone Number: ${customerModel.phoneNumber}"),
          ],
        ),
      ),
    );
  }
}
