import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Router/MyRoutes.gr.dart';

@RoutePage()
class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authControllerProvider).whenData((value) => switch (value) {
          Admin() =>
            context.router.replace(const AdminNavigationScaffoldRoute()),
          Company() =>
            context.router.replace(const CompanyNavigationScaffoldRoute()),
          Customer() =>
            context.router.replace(const CustomerNavigationScaffoldRoute()),
          None() => context.router.replace(const LoginRoute()),
        });
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash Page'),
            SizedBox(height: 16),
            LoadingSpinner(),
          ],
        ),
      ),
    );
  }
}

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square(
      dimension: 16,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
      ),
    );
  }
}
