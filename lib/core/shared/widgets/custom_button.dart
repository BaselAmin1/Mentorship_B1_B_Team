import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x/core/theming/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final BorderSide? borderSide;
  final double? elevation;
  final bool? enableShadow;
  final bool? isEnabled;
  final List<Color>? gradientColors;

  final List<BoxShadow>? boxShadow;
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.color,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.borderRadius = 8.0,
      this.borderSide,
      this.elevation,
      this.enableShadow,
      this.isEnabled,
      this.boxShadow,
      this.textStyle,
      this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.9,
        height: height ?? 60.h,
        margin: margin,
        decoration: BoxDecoration(
          gradient: gradientColors != null
              ? LinearGradient(
                  colors: gradientColors!,
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter)
              : null,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderSide?.color ?? Colors.transparent),
          color: color ?? AppColors.buttonBackGroundColor,
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: -1,
                  blurRadius: 5.sp,
                ),
              ],
        ),
        child: Center(
          child: Text(text,
              style: textStyle ??
                  const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
        ),
      ),
    );
  }
}
