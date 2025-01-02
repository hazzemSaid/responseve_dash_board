import 'package:flutter/material.dart';

import '../utils/adaptiveUI.dart';
import '../widgets/DashboardDesktop.dart';
import '../widgets/mobilelayout.dart';
import '../widgets/tablelayout.dart';

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
        dashboard: (context) => const DashboardDesktop(),
        mobileLayoutWidget: (context) => const MobileLayoutWidget(),
        tableLayoutWidget: (context) => const TableLayoutWidget(),
      ),
    );
  }
}
