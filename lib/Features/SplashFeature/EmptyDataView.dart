import 'package:flutter/cupertino.dart';

class EmptyDataView extends StatelessWidget {
  const EmptyDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: <Widget>[
      SliverFillRemaining(
        child: Center(
          child: Text("No Data Found"),
        ),
      ),
    ]);
  }
}
