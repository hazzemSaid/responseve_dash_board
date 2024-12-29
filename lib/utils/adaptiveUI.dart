import 'package:flutter/material.dart';

class DynamicLayout extends StatelessWidget {
  const DynamicLayout({super.key, required this.dashboard});
  final WidgetBuilder dashboard;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayoutWidget();
      } else if (constraints.maxWidth < 1200) {
        return TableLayoutWidget();
      } else {
        return dashboard(context);
      }
    });
  }
}

class TableLayoutWidget extends StatelessWidget {
  const TableLayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text('tablet Dashboard')),
    );
  }
}

class mobileLayoutWidget extends StatelessWidget {
  const mobileLayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text('mobile Dashboard')),
    );
  }
}
