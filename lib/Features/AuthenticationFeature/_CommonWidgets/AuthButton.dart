import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/Resouces/ColorManager.dart';
import '../../../utils/Resouces/ValuesManager.dart';
import '../Data/Repositories/AuthController.dart';

class AuthButton extends ConsumerWidget {
  const AuthButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);
    return ElevatedButton(
      onPressed: state.isLoading ? null : onPressed,
      child: state.isLoading
          ? const SizedBox(
              height: AppSizeManager.s20,
              width: AppSizeManager.s20,
              child: CircularProgressIndicator())
          : Text(text,
              style: onPressed == null
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ColorManager.secondary)
                  : Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ColorManager.onPrimary)),
    );
  }
}
