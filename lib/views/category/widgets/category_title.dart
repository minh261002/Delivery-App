import 'package:delivery_app/common/app_style.dart';
import 'package:delivery_app/common/reusable.dart';
import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/views/category/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryTitle extends StatelessWidget {
  CategoryTitle({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => CategoryPage(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(
          category['imageUrl'],
          fit: BoxFit.contain,
        ),
      ),
      title: ReusableText(
        text: category['title'],
        style: appStyle(12, kGray, FontWeight.normal),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
