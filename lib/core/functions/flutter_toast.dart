import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:space_x/core/theming/colors.dart';

void customToast({
  required String msg,
  var color,
  required ToastType? type,
}) =>
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: type == ToastType.error
          ? AppColors.errorColor
          : type == ToastType.success
              ? AppColors.successColor
              : color ?? AppColors.successColor,
      textColor: Colors.white,
      fontSize: 16.0.sp,
    );

enum ToastType {
  success,
  error,
  warning,
  info,
}
