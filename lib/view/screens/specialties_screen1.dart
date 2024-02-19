// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_guide/view/widgets/my_drawer.dart';
import 'package:doctor_guide/view/widgets/transation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/model/data.dart';
import 'package:doctor_guide/view/screens/doctors_screen2.dart';
import 'package:doctor_guide/view/widgets/my_appbar.dart';
import 'package:doctor_guide/view/widgets/my_gridview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SpecialtiesScreen extends StatelessWidget {
  const SpecialtiesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: const MyAppBar(
            title: 'specialties',
          )),
      drawer: const MyDrawer(),
      //Body
      body: BlocBuilder<DoctorCubit, DoctortState>(
        bloc: DoctorCubit(),
        builder: (context, state) {
          return MyGridView(
            list: specialties,
            onTap: (i) {
              final selectedSpecialty = specialties[i];

              Navigator.push(
                context,
                SlideRightPageRoute(
                  page: DoctorsScreen(specialtyId: selectedSpecialty.id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
