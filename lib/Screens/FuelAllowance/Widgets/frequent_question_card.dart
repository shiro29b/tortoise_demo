import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrequentQuestionCard extends StatelessWidget {
  final String title;

  const FrequentQuestionCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Container(
        height: 76.h,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffeeeeee)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFAFAFA),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                "assets/down_arrow.png",
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      color: const Color(0xff4b4b4b),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
