// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:doctor_guide/model/data.dart';
import 'package:doctor_guide/model/models.dart';
import 'package:doctor_guide/view/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'guide_state.dart';

class DoctorCubit extends Cubit<DoctortState> {
  DoctorCubit() : super(DoctorInitial());
// specialties to doctors
  List<Doctors> loadDoctorsBySpecialty(int idSpecialty) {
    emit(DoctorsLoaded());
    try {
      return doctors
          .where((doctor) => doctor.idSpecialty == idSpecialty)
          .toList();
    } catch (error) {
      emit(DoctorError());
      print('Error loading doctors: $error');
      return [];
    }
  }

  List<Doctors> getDoctors() {
    return List<Doctors>.from(doctors);
  }

  ///Add Doctor
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactsController = TextEditingController();
  late int specialtyId;
  void addDoctor() async {
    int idDoctor = 0;

    for (var doctor in doctors) {
      if (doctor.id >= idDoctor) {
        idDoctor = doctor.id + 1;
      }
    }
    doctors.add(Doctors(
        id: idDoctor,
        idSpecialty: specialtyId,
        name: nameController.text,
        description: descriptionController.text,
        time: timeController.text,
        address: addressController.text,
        contacts: contactsController.text));
    nameController.clear();
    descriptionController.clear();
    timeController.clear();
    addressController.clear();
    contactsController.clear();
    showToast();
  }
}
