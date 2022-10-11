import 'package:dilevery/core/thems.dart';
import 'package:dilevery/src/provider/mode_theme_provider.dart';
import 'package:dilevery/src/provider/nav_bottom_provider.dart';
import 'package:dilevery/src/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => ModelThemeProvider()),
      ],
      child: Consumer<ModelThemeProvider>(
        builder: (context, ModelThemeProvider themeNotifier, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              //themeNotifier.darkTheme ? dark : light,
              //themeMode: themeNotifier.getThemeMode(),
              themeMode: ThemeMode.system,
              theme: themeNotifier.isDark
                  ? MyThemes.darkTheme
                  : MyThemes.lightThem,
              darkTheme: MyThemes.darkTheme,
              home: const MyHomePage(),
              debugShowCheckedModeBanner: false);
        },
      ),
    );
  }
}
