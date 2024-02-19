import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast() {
  Fluttertoast.showToast(
    msg: "Doctor Added Successfully",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.red,
    textColor: Colors.green,
    fontSize: 24.0.sp,
  );
}
