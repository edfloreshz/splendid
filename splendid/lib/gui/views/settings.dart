import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SettingsList(
                  lightTheme: const SettingsThemeData(
                    settingsListBackground: Colors.transparent,
                    settingsSectionBackground: Colors.transparent,
                  ),
                  darkTheme: const SettingsThemeData(
                    settingsListBackground: Colors.transparent,
                    settingsSectionBackground: Colors.transparent,
                  ),
                  sections: [
                    SettingsSection(
                      title: const Text("General"),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                            leading: const Icon(Icons.palette),
                            title: const Text("Appearence"),
                            onPressed: (context) => {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Settings"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
