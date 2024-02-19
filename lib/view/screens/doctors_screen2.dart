// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_guide/model/data.dart';
import 'package:doctor_guide/model/models.dart';
import 'package:doctor_guide/view/screens/doctor_data_screen3.dart';
import 'package:doctor_guide/view/widgets/transation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/view/widgets/my_gridview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DoctorsScreen extends StatelessWidget {
  int specialtyId;
  DoctorsScreen({
    super.key,
    required this.specialtyId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            title: Text("${specialties[specialtyId].name} Doctors"),
          ),
        ),
        body: BlocBuilder<DoctorCubit, DoctortState>(builder: (context, state) {
          final doctorCubit = BlocProvider.of<DoctorCubit>(context);
          final List<Doctors> filtedDoctorsList =
              doctorCubit.loadDoctorsBySpecialty(specialtyId);

          return MyGridView(
            onTap: (i) {
              Navigator.push(
                context,
                SlideRightPageRoute(
                  page: DoctorDataScreen(
                    doctorId: i,
                    doctorsList: filtedDoctorsList,
                    specialtyId: specialtyId,
                  ),
                ),
              );
            },
            list: filtedDoctorsList,
          );
        }));
  }
}
