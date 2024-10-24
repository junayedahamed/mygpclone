import 'package:flutter/material.dart';
import 'package:mygp/home/pages/bottom%20navigation/logic.dart';
import 'package:mygp/home/pages/explore.dart';
import 'package:mygp/home/pages/home_page.dart';
import 'package:mygp/home/pages/offer_page.dart';
import 'package:mygp/home/pages/profile_page.dart';
import 'package:mygp/home/pages/sevices_page.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final List pages = const [
    HomePage(),
    OfferPage(),
    ExplorePage(),
    SevicesPage(),
    ProfilePage(),
  ];

  // int currentIndex = 0;
  final NavigationbarHandler nav = NavigationbarHandler();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: nav,
        builder: (context, snapshot) {
          return Scaffold(
            body: Center(
              child: pages[nav.currentIndex],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.interests_sharp,
                  ),
                  label: "Offers",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: "Explore",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_repair_service_sharp,
                  ),
                  label: "Services",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box_rounded,
                  ),
                  label: "Account",
                ),
              ],
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              elevation: 30,
              currentIndex: nav.currentIndex,
              onTap: nav.nextIndex,
            ),
          );
        });
  }
}
