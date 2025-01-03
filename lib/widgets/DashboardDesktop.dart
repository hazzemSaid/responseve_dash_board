import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Dashboard'),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
          style: AppStyle.style16,
        ),
      ),
    );
  }
}
