import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class BenefitCard2 extends StatelessWidget {
  final Color bg;
  final String imgPath;
  final String iconImgPath;
  final Color txtColor;
  final String title;

  final VoidCallback onPressed;

  const BenefitCard2({
    super.key,
    required this.bg,
    required this.imgPath,
    required this.iconImgPath,
    required this.txtColor,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.5.w),
        child: Container(
          height: 146.h,
          width: double.infinity,
          decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              border: GradientBoxBorder(
                  width: 1.86,
                  gradient: const LinearGradient(colors: [
                    Color(0xffFFCEBA),
                    Color(0xffD27047),
                    Color(0xffBB5429),
                  ])),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffFEAA6C),
                  Color(0xffFF9546),
                ],
              ),
              borderRadius: BorderRadius.circular(14.r)),
          child: DottedBorder(
            borderPadding: const EdgeInsets.all(1.5),
            borderType: BorderType.RRect,
            strokeWidth: 2,
            dashPattern: const [6, 4],
            color: txtColor,
            radius: Radius.circular(14.r),
            child: Stack(
              children: [
                Positioned(
                  top: 16,
                  left: 16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageIcon(
                        color: txtColor,
                        AssetImage(iconImgPath),
                        size: 32, // Specify the size of the icon
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: txtColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 22.sp),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Center(
                        child: SizedBox(
                          width: 320.w,
                          child: DottedLine(
                            dashColor: txtColor,
                            dashGapLength: 4,
                            dashLength: 8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 12.5,
                  left: 16,
                  right: 16,
                  child: Text(
                    "Allocate upto ₹ 2400 / month",
                    style: TextStyle(
                        color: const Color(0xff191919),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
