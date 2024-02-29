import 'package:demo/Widgets/custom_button.dart';
import 'package:demo/constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
            scale: 2.5,
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
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffeeeeee),
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

class CustomTrackShape extends RoundedRectSliderTrackShape {
  // @override
  // Rect getPreferredRect({
  //   required RenderBox parentBox,
  //   Offset offset = Offset.zero,
  //   required SliderThemeData sliderTheme,
  //   bool isEnabled = false,
  //   bool isDiscrete = false,
  // }) {
  //   final double trackHeight = sliderTheme.trackHeight!;
  //   final double trackLeft = offset.dx + 16;
  //   final double trackTop =
  //       offset.dy + (parentBox.size.height - trackHeight) / 2;
  //   final double trackWidth = parentBox.size.width - 32;
  //   return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  // }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    const Radius trackRadius = Radius.circular(12);
    const Radius activeTrackRadius = Radius.circular(12);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        topRight: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
      ),
      rightTrackPaint,
    );

    final bool showSecondaryTrack = (secondaryOffset != null) &&
        ((textDirection == TextDirection.ltr)
            ? (secondaryOffset.dx > thumbCenter.dx)
            : (secondaryOffset.dx < thumbCenter.dx));

    if (showSecondaryTrack) {
      final ColorTween secondaryTrackColorTween = ColorTween(
          begin: sliderTheme.disabledSecondaryActiveTrackColor,
          end: sliderTheme.secondaryActiveTrackColor);
      final Paint secondaryTrackPaint = Paint()
        ..color = secondaryTrackColorTween.evaluate(enableAnimation)!;
      if (textDirection == TextDirection.ltr) {
        context.canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            thumbCenter.dx,
            trackRect.top,
            secondaryOffset.dx,
            trackRect.bottom,
            topRight: trackRadius,
            bottomRight: trackRadius,
          ),
          secondaryTrackPaint,
        );
      } else {
        context.canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            secondaryOffset.dx,
            trackRect.top,
            thumbCenter.dx,
            trackRect.bottom,
            topLeft: trackRadius,
            bottomLeft: trackRadius,
          ),
          secondaryTrackPaint,
        );
      }
    }
  }
}

class CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(4.0);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    Paint whiteLinePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4.0;

    RRect whiteLineRect = RRect.fromRectAndCorners(
      Rect.fromLTWH(center.dx - 10, center.dy - 30, 6, 60),
      topLeft: Radius.circular(5.0),
      topRight: Radius.circular(5.0),
      bottomLeft: Radius.circular(5.0),
      bottomRight: Radius.circular(5.0),
    );
    canvas.drawRRect(whiteLineRect, whiteLinePaint);

    // Draw space to the right of the white line
    Paint transparentPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 0.5;
    canvas.drawLine(Offset(center.dx - 9, center.dy - 28),
        Offset(center.dx - 9, center.dy + 28), transparentPaint);
  }
}
