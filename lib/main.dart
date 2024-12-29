import 'package:flutter/material.dart';
import 'package:responsve_dash_borad/views/mobilelayout.dart';
import 'package:responsve_dash_borad/views/tablelayout.dart';

import 'utils/adaptiveUI.dart';
import 'views/dashboard.dart';

void main() {
  runApp(const adaptiveDashboard());
}

class adaptiveDashboard extends StatelessWidget {
  const adaptiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DynamicLayout(
        dashboard: (context) => const Dashboard(),
        mobileLayoutWidget: (context) => const MobileLayoutWidget(),
        tableLayoutWidget: (context) => const TableLayoutWidget(),
      ),
    );
  }
}
