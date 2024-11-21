import 'package:delivery_app/common/custom_appbar.dart';
import 'package:delivery_app/common/custom_container.dart';
import 'package:delivery_app/common/heading.dart';
import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/views/home/widgets/all_fastest_food.dart';
import 'package:delivery_app/views/home/widgets/all_nearby_restaurants.dart';
import 'package:delivery_app/views/home/widgets/category_list.dart';
import 'package:delivery_app/views/home/widgets/recommendations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const CustomAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(
                    () => const AllNearbyRestaurants(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                  );
                },
              ),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(
                    () => const Recommendations(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                  );
                },
              ),
              Heading(
                text: "Food closer to you",
                onTap: () {
                  Get.to(
                    () => const AllFastestFood(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
