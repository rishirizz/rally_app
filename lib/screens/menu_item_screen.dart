import 'package:flutter/material.dart';

import '../components/rally_nav_rail.dart';

class MenuItemScreen extends StatefulWidget {
  const MenuItemScreen({super.key});

  @override
  State<MenuItemScreen> createState() => _MenuItemScreenState();
}

class _MenuItemScreenState extends State<MenuItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0Xff33333e),
        body: Row(
          children: [
            const RallyNavRail(),
            Expanded(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
