// ignore_for_file: public_member_api_docs, sort_ructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/model/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DoctorDataScreen extends StatelessWidget {
  int doctorId;
  int specialtyId;
  List doctorsList;
  DoctorDataScreen({
    super.key,
    required this.doctorId,
    required this.specialtyId,
    required this.doctorsList,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          doctorsList[doctorId].name,
          style: TextStyle(fontSize: 28.sp),
        ),
      ),
      body: BlocBuilder<DoctorCubit, DoctortState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //   Image.asset("images/doctor"),
              Icon(
                Icons.person,
                size: 100.r,
              ),
              SizedBox(
                height: 10.h,
                child:
                    Divider(color: Colors.black, indent: 20.w, endIndent: 20.w),
              ),
              SizedBox(
                child: Text(
                  doctorsList[doctorId].description,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              Text(
                "Specialty : ${specialties[specialtyId].name}",
                style: TextStyle(fontSize: 20.sp),
              ),
              Text(
                "Address : ${doctorsList[doctorId].address}",
                style: TextStyle(fontSize: 20.sp),
              ),
              Text(
                "Time :  ${doctorsList[doctorId].time}",
                style: TextStyle(fontSize: 22.sp),
              ),
              Text(
                "Contacts : ${doctorsList[doctorId].contacts}",
                style: TextStyle(fontSize: 22.sp),
              )
            ],
          );
        },
      ),
    );
  }
}
