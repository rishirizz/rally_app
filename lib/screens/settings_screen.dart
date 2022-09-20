import 'package:flutter/material.dart';
import 'package:rally_app/components/rally_nav_rail.dart';
import '../components/settings_tile.dart';

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
