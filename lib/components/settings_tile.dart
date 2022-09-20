import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

class SettingsTile extends StatelessWidget {
  final String? settingsTitle;
  const SettingsTile({
    @required this.settingsTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          settingsTitle!,
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
