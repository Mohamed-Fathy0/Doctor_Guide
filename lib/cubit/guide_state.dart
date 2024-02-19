// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'guide_cubit.dart';

sealed class DoctortState {}

class DoctorInitial extends DoctortState {}

class DoctorsLoaded extends DoctortState {}

class DoctorError extends DoctortState {}

class DoctorDataLoaded extends DoctortState {}

class DoctorDataError extends DoctortState {}
