import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color bg;
  final Color textColor;
  final bool hasIcon;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key,
      required this.title,
      required this.bg,
      required this.textColor,
      required this.hasIcon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bg,
        minimumSize: Size.fromHeight(62.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r), // rounded corners
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
            if (hasIcon)
              const Icon(
                Icons.arrow_circle_right_rounded,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
