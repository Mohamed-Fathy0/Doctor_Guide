import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  final int index;
  final List list;

  const MyCard({
    super.key,
    required this.index,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Add rounded corners
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20), // Add padding for content
        child: Center(
          child: Text(
            list[index].name,
            style: TextStyle(
              fontSize: 18.sp, // Customize text size
              fontWeight: FontWeight.bold, // Make text bold
              color: Colors.blue, // Customize text color
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ), // Customize card background color
    );
  }
}
