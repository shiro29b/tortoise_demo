import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllownaceBox extends StatelessWidget {
  final String iconImgPath;
  final String title;
  const AllownaceBox({
    super.key,
    required this.iconImgPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.5.w,
      height: 93.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffeeeeee),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(
              color: const Color(0xff323232),
              AssetImage(iconImgPath),
              size: 28.dg, // Specify the size of the icon
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              title,
              style: TextStyle(
                  color: const Color(0xff323232),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
