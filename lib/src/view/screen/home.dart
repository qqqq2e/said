import 'package:dilevery/core/app_data.dart';
import 'package:dilevery/src/provider/mode_theme_provider.dart';
import 'package:dilevery/src/provider/nav_bottom_provider.dart';
import 'package:dilevery/src/view/screen/all_leads.dart';
import 'package:dilevery/src/view/screen/find_leads.dart';
import 'package:dilevery/src/view/screen/home_dashboard.dart';
import 'package:dilevery/src/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<Widget> screens = const [
    DashboardScreen(),
    FindLeadsScreen(),
    AllLeadsScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _screenindexprovider =
        Provider.of<BottomNavigationBarProvider>(context);
    // ignore: no_leading_underscores_for_local_identifiers
    final _thememodeprovider = Provider.of<ModelThemeProvider>(context);
    int currentScreenIndex = _screenindexprovider.fetchCurrentScreenIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        currentIndex: currentScreenIndex,
        showUnselectedLabels: true,
        onTap: (value) => _screenindexprovider.updateScreenIndex(value),
        fixedColor: Theme.of(context).primaryColor,
        items: AppData.bottomNavigationItems(_thememodeprovider.isDark, currentScreenIndex)
            .map(
              (element) => BottomNavigationBarItem(
                  icon: element.icon, label: element.label),
            )
            .toList(),
      ),
    );
  }
}
