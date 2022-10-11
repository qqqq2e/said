import 'package:dilevery/src/model/bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppData {
  const AppData._();

  static const Color pinkcolor = Color(0xFF822685);

 /* static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(const Icon(Icons.home), 'Home'),
    BottomNavigationItem(
        SvgPicture.asset(
          "assets/icons/search.svg",
          width: 24.0,
          height: 24.0,
        ),
        'Search'),
    BottomNavigationItem(
        const Icon(Icons.bookmark, color: Colors.black), 'Deals'),
    BottomNavigationItem(
        const Icon(Icons.person, color: Colors.black), 'Settings')
  ];*/

  static List<BottomNavigationItem> bottomNavigationItems(bool isDark,isSelected) {
    List<BottomNavigationItem> itemlist = [
      BottomNavigationItem(const Icon(Icons.home), 'Home'),
      BottomNavigationItem(
          SvgPicture.asset(
            "assets/icons/search.svg",
            width: 24.0,
            height: 24.0,
            color: isSelected == 1?  pinkcolor :(isDark? Colors.white : Colors.black),
          ),
          'Search'),
      BottomNavigationItem(
           const Icon(Icons.bookmark), 'Deals'),
      BottomNavigationItem(
          const Icon(Icons.person), 'Settings')
    ];

    return itemlist;
  }
}
