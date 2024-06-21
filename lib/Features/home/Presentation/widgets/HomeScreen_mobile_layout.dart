import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/favorites_content.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/home_content.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/my_cart_content.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/profile_content.dart';
import 'package:slash_responsive_home_screen/constants.dart';

class HOmeScreenMobileLayout extends StatefulWidget {
  const HOmeScreenMobileLayout({super.key});

  @override
  HOmeScreenMobileLayoutState createState() => HOmeScreenMobileLayoutState();
}

class HOmeScreenMobileLayoutState extends State<HOmeScreenMobileLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    FavoritesContent(),
    CartContent(),
    ProfileContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsHome,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsHeart,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsShoppingCart,
            ),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsProfileCircle,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
