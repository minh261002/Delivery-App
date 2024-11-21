import 'package:delivery_app/common/app_style.dart';
import 'package:delivery_app/common/background_container.dart';
import 'package:delivery_app/common/reusable.dart';
import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/constants/uidata.dart';
import 'package:delivery_app/views/category/widgets/category_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: "All Categories",
          style: appStyle(12, kGray, FontWeight.w600),
        ),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: hieght,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              categories.length,
              (i) {
                var category = categories[i];
                return CategoryTitle(category: category);
              },
            ),
          ),
        ),
      ),
    );
  }
}
