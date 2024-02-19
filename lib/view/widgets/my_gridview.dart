import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/view/widgets/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyGridView extends StatelessWidget {
  final List list;
  final void Function(int)? onTap; //(int specialtyId)
  const MyGridView({
    super.key,
    required this.list,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorCubit, DoctortState>(
      builder: (context, state) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            //  BlocProvider.of<DoctorCubit>(context).setIndex = index;
            return GestureDetector(
              onTap: () => onTap!(index),
              child: Padding(
                padding: EdgeInsets.all(4.0.r),
                child: MyCard(
                  index: index,
                  list: list,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
