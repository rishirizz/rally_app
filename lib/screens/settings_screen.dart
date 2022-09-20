import 'package:flutter/material.dart';
import 'package:rally_app/components/rally_nav_rail.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0Xff33333e),
        body: Row(
          children: [
            const RallyNavRail(),
            Expanded(
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}
