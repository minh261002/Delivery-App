import 'package:delivery_app/common/custom_appbar.dart';
import 'package:delivery_app/common/custom_container.dart';
import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/views/home/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          CategoryList(),
        ],
      ))),
    );
  }
}
