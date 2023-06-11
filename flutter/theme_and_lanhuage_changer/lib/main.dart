import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeData appTheme = ThemeData.light();
  late Locale appLocale = const Locale('system');

  @override
  void initState() {
    super.initState();
    loadSettings();
  }

  void loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      String? theme = prefs.getString('theme');
      appTheme = theme == 'dark' ? ThemeData.dark() : ThemeData.light();

      String? language = prefs.getString('language');
      appLocale = Locale(language ?? 'system');
    });
  }

  void saveTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);

    setState(() {
      appTheme = theme == 'dark' ? ThemeData.dark() : ThemeData.light();
    });
  }

  void saveLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);

    setState(() {
      appLocale = Locale(language);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Demo',
      theme: appTheme,
      darkTheme: ThemeData.dark(),
      locale: appLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      home: SettingsScreen(
        saveTheme: saveTheme,
        saveLanguage: saveLanguage,
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final Function(String) saveTheme;
  final Function(String) saveLanguage;

  const SettingsScreen(
      {super.key, required this.saveTheme, required this.saveLanguage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Theme'),
            subtitle: const Text('Selected theme:'),
            trailing: DropdownButton<String>(
              value: Theme.of(context).brightness == Brightness.dark
                  ? 'dark'
                  : 'light',
              onChanged: (value) => saveTheme(value!),
              items: const [
                DropdownMenuItem(
                  value: 'light',
                  child: Text('Light'),
                ),
                DropdownMenuItem(
                  value: 'dark',
                  child: Text('Dark'),
                ),
                DropdownMenuItem(
                  value: 'system',
                  child: Text('System'),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Language'),
            subtitle: const Text('Selected language:'),
            trailing: DropdownButton<String>(
              value: Localizations.localeOf(context).languageCode,
              onChanged: (value) => saveLanguage(value!),
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'ru',
                  child: Text('Russian'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
