import 'package:flutter/material.dart';

class DynamicLayout extends StatelessWidget {
  const DynamicLayout(
      {super.key,
      required this.dashboard,
      required this.mobileLayoutWidget,
      required this.tableLayoutWidget});
  final WidgetBuilder dashboard, mobileLayoutWidget, tableLayoutWidget;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayoutWidget(context);
      } else if (constraints.maxWidth < 1200) {
        return tableLayoutWidget(context);
      } else {
        return dashboard(context);
      }
    });
  }
}
