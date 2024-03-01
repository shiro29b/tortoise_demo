import 'package:demo/Screens/FuelAllowance/Widgets/allowance_box.dart';
import 'package:demo/Screens/FuelAllowance/Widgets/benefit_card.dart';
import 'package:demo/Screens/FuelAllowance/Widgets/custom_thumb_shape.dart';
import 'package:demo/Screens/FuelAllowance/Widgets/custom_tracker.dart';
import 'package:demo/Screens/FuelAllowance/Widgets/frequent_question_card.dart';
import 'package:demo/Widgets/custom_button.dart';
import 'package:demo/constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FuelAllowance extends StatefulWidget {
  const FuelAllowance({super.key});

  @override
  State<FuelAllowance> createState() => _FuelAllowanceState();
}

class _FuelAllowanceState extends State<FuelAllowance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFAF4EA),
      appBar: AppBar(
        backgroundColor: const Color(0xffFAF4EA),
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/arrow_left.png',
            scale: 3.5,
          ),
        ),
        title: Text(
          "Flexi-benefits",
          style: TextStyle(
              color: const Color(0xff191919),
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 32.h,
            ),
            BenefitCard2(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FuelAllowance()));
              },
              title: "Fuel Allowance",
              imgPath: 'assets/fuel_design.png ',
              bg: const Color(0xffFEAA6C),
              iconImgPath: 'assets/GasPump.png',
              txtColor: const Color(0xff80121D),
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Center(
                  child: Text(
                "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
                style: TextStyle(
                    color: const Color(0xff4b4b4b),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              )),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                children: [
                  Image.asset(
                    "assets/benefit.png",
                    scale: 3,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Benefits",
                    style: TextStyle(
                        color: const Color(0xff4b4b4b),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Center(
                  child: Text(
                "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
                style: TextStyle(
                    color: const Color(0xff4b4b4b),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              )),
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: SizedBox(
                width: 320.w,
                child: const DottedLine(
                  lineThickness: 2,
                  dashColor: Color(0xffeeeeee),
                  dashGapLength: 4,
                  dashLength: 8,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                children: [
                  Image.asset(
                    "assets/work.png",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "How does it work?",
                    style: TextStyle(
                        color: const Color(0xff4b4b4b),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "This allowance can be used via 2 modes",
                  style: TextStyle(
                      color: const Color(0xff4b4b4b),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                children: [
                  const AllownaceBox(
                    iconImgPath: "assets/card.png",
                    title: "Physical Card",
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  const AllownaceBox(
                    iconImgPath: "assets/reimbursement.png",
                    title: "Reimbursement",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
                  style: TextStyle(
                      color: const Color(0xff4b4b4b),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: SizedBox(
                width: 320.w,
                child: const DottedLine(
                  lineThickness: 2,
                  dashColor: Color(0xffeeeeee),
                  dashGapLength: 4,
                  dashLength: 8,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                children: [
                  Image.asset(
                    "assets/questions.png",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Frequently asked questions",
                    style: TextStyle(
                        color: const Color(0xff4b4b4b),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const FrequentQuestionCard(
              title:
                  'What happens to my unused balance at the end off the month?',
            ),
            SizedBox(
              height: 8.h,
            ),
            const FrequentQuestionCard(
              title: "Can I opt out of this allowance later?",
            ),
            SizedBox(
              height: 8.h,
            ),
            const FrequentQuestionCard(
              title: "Do all fuel stations accept the physical card?",
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: CustomButton(
                  title: "Select allowance amount",
                  bg: Colors.black,
                  textColor: Colors.white,
                  hasIcon: false,
                  onPressed: () {
                    customBottomSheet(context);
                  }),
            ),
            SizedBox(
              height: 32.h,
            ),
          ],
        ),
      ),
    ));
  }

  Future<dynamic> customBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity.w,
          height: 600.h,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "SETTING ALLOWANCE AMOUNT",
                style: TextStyle(
                    color: const Color(0xffcbcbcb),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 46.h),
              const ImageIcon(
                color: Color(0xfffeaa6c),
                AssetImage("assets/GasPump.png"),
                size: 26, // Specify the size of the icon
              ),
              SizedBox(height: 8.h),
              Text(
                "Fuel Allowance",
                style: TextStyle(
                    color: const Color(0xff191919),
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  "Drag the bar to set the desired",
                  style: TextStyle(
                      color: const Color(0xff757575),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Wrap(
                children: [
                  Text(
                    "monthly amount ",
                    style: TextStyle(
                        color: const Color(0xff323232),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "for this allowance",
                    style: TextStyle(
                        color: const Color(0xff757575),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 42.h),
              StatefulBuilder(builder: (context, setState) {
                return Column(
                  children: [
                    Text(
                      "₹ ${currentSliderValue.round()}",
                      style: TextStyle(
                          color: const Color(0xff191919),
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 42.h),
                    SliderTheme(
                      data: SliderThemeData(
                          thumbColor: Colors.white,
                          trackHeight: 70,
                          trackShape: CustomTrackShape(),
                          thumbShape: CustomThumbShape()),
                      child: Slider(
                        activeColor: currentSliderValue == 2400
                            ? const Color(0xff62E29F)
                            : const Color(0xffFEAA6C),
                        value: currentSliderValue,
                        max: 2400,
                        divisions: 2400,
                        label: currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentSliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                );
              }),
              SizedBox(height: 11.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹ 0",
                      style: TextStyle(
                          color: const Color(0xff191919),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "₹ 2400",
                      style: TextStyle(
                          color: const Color(0xff191919),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomButton(
                    title: "Done",
                    bg: Colors.black,
                    textColor: Colors.white,
                    hasIcon: false,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}

