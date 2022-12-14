import 'package:flutter/material.dart';
import 'package:rally_app/screens/home_screen.dart';
import 'package:rally_app/screens/login_page.dart';
import 'package:rally_app/screens/menu_item_screen.dart';
import 'package:rally_app/screens/settings_screen.dart';

void main() {
  runApp(const RallyApp());
}

class RallyApp extends StatelessWidget {
  const RallyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          '/login': (BuildContext context) => const LoginPage(),
          '/home': (BuildContext context) => const HomeScreen(),
          '/menuItem': (BuildContext context) => const MenuItemScreen(),
          '/settings': (BuildContext context) => const SettingsScreen(),
        };

        WidgetBuilder? builder = routes[settings.name]!;

        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
