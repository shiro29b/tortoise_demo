import 'package:demo/Screens/flexi_benefits.dart';
import 'package:demo/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlexiBenefitCard extends StatelessWidget {
  const FlexiBenefitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAF4EA),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 93.h,
              ),
              Center(
                child: SizedBox(
                  child: Center(
                    child: Image.asset(
                      'assets/credit_card_icon.png',
                      width: 28.w, // specify the width
                      height: 20.h, // specify the height
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Flexi-benefits card",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Center(
                    child: Text(
                  "Allocate a part of your salary against tax-",
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
                  "saving allowances and access them with a",
                  style: TextStyle(
                      color: const Color(0xff757575),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Wrap(children: [
                Text(
                  'Rupay card that is ',
                  style: TextStyle(
                      color: const Color(0xff757575),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'accepted online ',
                  style: TextStyle(
                      color: const Color(0xff191919),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'and',
                  style: TextStyle(
                      color: const Color(0xff757575),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Center(
                    child: Text(
                  "across 5 lakh merchants",
                  style: TextStyle(
                      color: const Color(0xff191919),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                height: 34.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Center(
                  child: Card(
                    elevation: 25,
                    child: Image.asset(
                      'assets/credit_card.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Center(
                  child: Text(
                "You can allocate upto ",
                style: TextStyle(
                    color: const Color(0xff757575),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 8.h,
              ),
              Center(
                  child: Text(
                "₹ 10,000 / month",
                style: TextStyle(
                    color: const Color(0xff191919),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 8.h,
              ),
              Center(
                  child: Text(
                "in flexi-benefits and reduce your taxable",
                style: TextStyle(
                    color: const Color(0xff757575),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              )),
              Center(
                  child: Text(
                "income by ₹ 1,20,000 every year",
                style: TextStyle(
                    color: const Color(0xff757575),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FlexiBenefits()));
                  },
                  title: "Explore flexi-benefits",
                  bg: Colors.black,
                  textColor: Colors.white,
                  hasIcon: true,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomButton(
                    onPressed: () {},
                    title: "Setup later",
                    hasIcon: false,
                    bg: Colors.white,
                    textColor: Colors.black),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
