import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/controllers/tab_index_controller.dart';
import 'package:delivery_app/views/cart/cart_page.dart';
import 'package:delivery_app/views/home/home_page.dart';
import 'package:delivery_app/views/profile/profile_page.dart';
import 'package:delivery_app/views/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());

    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        unselectedIconTheme:
                            const IconThemeData(color: Colors.black38),
                        onTap: (value) => {
                              controller.SetTabIndex = value,
                            },
                        currentIndex: controller.tabIndex,
                        items: [
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 0
                                  ? const Icon(Icons.home)
                                  : const Icon(Icons.home_outlined),
                              label: 'Home'),
                          const BottomNavigationBarItem(
                              icon: Icon(Icons.search), label: 'Search'),
                          const BottomNavigationBarItem(
                              icon: Badge(
                                  label: Text('1'),
                                  child: Icon(Icons.shopping_cart)),
                              label: 'Cart'),
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 3
                                  ? const Icon(Icons.person)
                                  : const Icon(Icons.person_2),
                              label: 'Profile'),
                        ])),
              )
            ],
          ),
        ));
  }
}
