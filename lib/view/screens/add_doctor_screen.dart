import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/model/data.dart';
import 'package:doctor_guide/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddDoctorScreen extends StatelessWidget {
  const AddDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Doctor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0).r,
        child: BlocBuilder<DoctorCubit, DoctortState>(
          builder: (context, state) {
            final doctorCubit = BlocProvider.of<DoctorCubit>(context);
            return ListView(
              children: [
                TextField(
                  controller: doctorCubit.nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                DropdownButtonFormField<Specialty>(
                  value: null,
                  onChanged: (specialty) {
                    if (specialty != null) {
                      doctorCubit.specialtyId = specialty.id;
                      print(
                          'Selected Specialty ID: ${doctorCubit.specialtyId}');
                    }
                  },
                  items: specialties.map((specialty) {
                    return DropdownMenuItem<Specialty>(
                      value: specialty,
                      child: Text(specialty.name),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Specialty',
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: doctorCubit.descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: doctorCubit.timeController,
                  decoration: const InputDecoration(
                    labelText: 'Time',
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: doctorCubit.addressController,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: doctorCubit.contactsController,
                  decoration: const InputDecoration(
                    labelText: 'Contacts',
                  ),
                ),
                SizedBox(height: 32.h),
                ElevatedButton(
                  onPressed: () {
                    if (doctorCubit.nameController.text.isEmpty ||
                        doctorCubit.descriptionController.text.isEmpty ||
                        doctorCubit.timeController.text.isEmpty ||
                        doctorCubit.addressController.text.isEmpty ||
                        doctorCubit.contactsController.text.isEmpty) {
                      // أحد الحقول فارغة، قم بعرض رسالة تنبيه للمستخدم
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Missing Information'),
                            content: const Text('Please fill in all fields.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // جميع الحقول ممتلئة، قم بإضافة الطبيب
                      doctorCubit.addDoctor();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Add Doctor'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
