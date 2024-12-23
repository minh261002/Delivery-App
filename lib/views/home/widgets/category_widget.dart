import 'package:delivery_app/common/app_style.dart';
import 'package:delivery_app/common/reusable.dart';
import 'package:delivery_app/constants/constants.dart';
import 'package:delivery_app/controllers/category_controller.dart';
import 'package:delivery_app/views/category/all_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    this.category,
  });
  var category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(() => const AllCategories(),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 300));
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.only(top: 4.h),
          width: width * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: controller.categoryValue == category['_id']
                  ? kSecondary
                  : kOffWhite,
              width: .5.w,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
                child: Image.network(
                  category['imageUrl'],
                  fit: BoxFit.contain,
                ),
              ),
              ReusableText(
                text: category['title'],
                style: appStyle(12, kDark, FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
