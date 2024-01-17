import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorView extends ConsumerWidget {
  final Object error;
  const ErrorView({super.key, required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(child: Text(error.toString()));
  }
}
