import 'package:flutter/material.dart';
import 'package:movise_project/screens/tabs/browse.dart';
import 'package:movise_project/screens/tabs/hometab.dart';
import 'package:movise_project/screens/tabs/listwatch.dart';
import 'package:movise_project/screens/tabs/search.dart';
import 'package:movise_project/utils/app_colors.dart';

class Home extends StatefulWidget {
  static const String routeNamed = "Home";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int selectedtab = 0;
    List<Widget> tabs = [HomeTab(), Search(), Browse(), ListWatch()];
    return Scaffold(
      backgroundColor: AppColors.primary,
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: AppColors.primary),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          // onTap: (index) {
          //   sellectedTabIndex = index;
          //   setState(() {});
          // },
          selectedItemColor: AppColors.secondly,
          showUnselectedLabels: true,
          // backgroundColor: AppColors.primary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_rounded), label: "Browse"),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_rounded), label: "ListWatch"),
          ],
        ),
      ),
      body: tabs[selectedtab],
    );
  }
}
