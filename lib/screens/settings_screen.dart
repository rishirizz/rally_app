import 'package:flutter/material.dart';
import 'package:rally_app/components/rally_nav_rail.dart';
import 'package:rally_app/main.dart';
import 'package:rally_app/screens/home_screen.dart';
import '../components/rally_app_bar.dart';
import '../components/settings_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0Xff33333e),
        appBar: (MediaQuery.of(context).size.width <= 800)
            ? const PreferredSize(
                preferredSize: Size.fromHeight(66),
                child: RallyAppBar(),
              )
            : null,
        body: Row(
          children: [
            if (MediaQuery.of(context).size.width > 800) const RallyNavRail(),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Manage Accounts',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Tax Documents',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Passcode and Touch ID',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Notifications',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Personal Information',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Paperless Settings',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Find ATMs',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Help',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      settingsTitle: 'Sign Out',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
