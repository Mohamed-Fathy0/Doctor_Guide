import 'dart:math';

import 'package:doctor_guide/model/models.dart';

List<Specialty> specialties = [
  Specialty(name: "Internal Medicine", id: 0),
  Specialty(name: "Orthopedics", id: 1),
  Specialty(name: "Dentistry", id: 2),
  Specialty(name: "Neurology", id: 3),
  Specialty(name: "Psychiatry", id: 4),
  Specialty(name: "Cardiology", id: 5),
  Specialty(name: "Dermatology", id: 6),
  Specialty(name: "Pediatrics", id: 7),
  Specialty(name: "Obstetrics and Gynecology", id: 8),
  Specialty(name: "Ophthalmology", id: 9),
  Specialty(name: "Otolaryngology", id: 10),
  Specialty(name: "Urology", id: 11),
  Specialty(name: "Gastroenterology", id: 12),
  Specialty(name: "Oncology", id: 13),
  Specialty(name: "Endocrinology", id: 14),
  Specialty(name: "Rheumatology", id: 15),
  Specialty(name: "Nephrology", id: 16),
  Specialty(name: "Pulmonology", id: 17),
  Specialty(name: "Hematology", id: 18),
  Specialty(name: "Infectious Diseases", id: 19),
];

List<Doctors> doctors = List.generate(100, (index) {
  final random = Random();
  final idSpecialty = random.nextInt(20);
  final name = _generateArabicName();
  return Doctors(
    name: "Dr $name",
    idSpecialty: idSpecialty,
    id: index,
    description: 'Description for $name',
    time: '${_generateRandomTime()} - ${_generateRandomTime()}',
    address: 'Address for $name',
    contacts: '+${_generateRandomPhoneNumber()}',
  );
});

String _generateArabicName() {
  final names = [
    'Mohammad',
    'Ahmed',
    'Ali',
    'Fatma',
    'Asmaa',
    'Salma',
    'Yousef',
    'Khaled',
    'Sama',
    'Amr',
    'John',
    'Emily',
    'Michael',
    'Sarah',
    'David',
    'Jessica',
    'Christopher',
    'Rachel',
    'Daniel',
    'Olivia',
  ];

  final random = Random();
  return names[random.nextInt(names.length)];
}

String _generateRandomTime() {
  final random = Random();
  final hour = random.nextInt(12) + 1;
  final minute = random.nextInt(60);
  return '$hour:${minute.toString().padLeft(2, '0')} ${random.nextBool() ? 'AM' : 'PM'}';
}

int _generateRandomPhoneNumber() {
  final random = Random();
  return 100000000 + random.nextInt(900000000);
}
