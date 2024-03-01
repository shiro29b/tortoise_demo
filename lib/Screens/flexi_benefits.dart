import 'package:demo/Screens/FuelAllowance/fuel_allowance.dart';
import 'package:demo/Widgets/custom_button.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlexiBenefits extends StatelessWidget {
  const FlexiBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFAF4EA),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 83.h,
                ),
                Text(
                  "Flexi-benefits",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Center(
                      child: Text(
                    "Explore various tax-saving allowances",
                    style: TextStyle(
                        color: const Color(0xff757575),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Center(
                      child: Text(
                    "available to you and opt for those that",
                    style: TextStyle(
                        color: const Color(0xff757575),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Center(
                      child: Text(
                    " make the most sense for you",
                    style: TextStyle(
                        color: const Color(0xff757575),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                  height: 27.h,
                ),
                BenefitCard(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FuelAllowance()));
                  },
                  title: "Fuel Allowance",
                  imgPath: 'assets/fuel_design.png',
                  bg: const Color(0xffFEAA6C),
                  iconImgPath: 'assets/GasPump.png',
                  txtColor: const Color(0xff80121D),
                ),
                SizedBox(
                  height: 8.h,
                ),
                BenefitCard(
                  onPressed: () {},
                  title: "Meal Card",
                  txtColor: const Color(0xff114036),
                  imgPath: 'assets/meal_design.png',
                  bg: const Color(0xff83EDA8),
                  iconImgPath: 'assets/BowlFood.png',
                ),
                SizedBox(
                  height: 8.h,
                ),
                BenefitCard(
                  onPressed: () {},
                  title: "Commute Allowance",
                  txtColor: const Color(0xff5C3A12),
                  imgPath: 'assets/comm_design.png',
                  bg: const Color(0xffFEC858),
                  iconImgPath: 'assets/CarSimple.png',
                ),
                SizedBox(
                  height: 8.h,
                ),
                BenefitCard(
                  onPressed: () {},
                  title: "Commute Allowance",
                  txtColor: const Color(0xff5C3A12),
                  imgPath: 'assets/comm_design.png',
                  bg: const Color(0xffFEC858),
                  iconImgPath: 'assets/CarSimple.png',
                ),
                SizedBox(
                  height: 8.h,
                ),
                BenefitCard(
                  onPressed: () {},
                  title: "Meal Card",
                  txtColor: const Color(0xff114036),
                  imgPath: 'assets/meal_design.png',
                  bg: const Color(0xff83EDA8),
                  iconImgPath: 'assets/BowlFood.png',
                ),
                SizedBox(
                  height: 180.h,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 170.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹ 0 allocated",
                          style: TextStyle(
                              color: const Color(0xff191919),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "₹ 10,000 available ",
                          style: TextStyle(
                              color: const Color(0xffafafaf),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Center(
                      child: SizedBox(
                        width: double.infinity.w,
                        child: LinearProgressIndicator(
                          value:
                              0.2, // Controls the percentage of the bar filled
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: CustomButton(
                        onPressed: () {},
                        title: "Continue",
                        hasIcon: true,
                        bg: Colors.black,
                        textColor: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class BenefitCard extends StatelessWidget {
  final Color bg;
  final String imgPath;
  final String iconImgPath;
  final Color txtColor;
  final String title;

  final VoidCallback onPressed;

  const BenefitCard({
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
              color: bg, borderRadius: BorderRadius.circular(14.r)),
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
                        child: const DottedLine(
                          dashColor: Colors.white,
                          dashGapLength: 4,
                          dashLength: 8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Allocate upto ₹ 2400 / month",
                      style: TextStyle(
                          color: const Color(0xff191919),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/arrow_right.png",
                        scale: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    imgPath,
                    scale: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
