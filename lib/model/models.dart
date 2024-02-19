// ignore_for_file: public_member_api_docs, sort_constructors_first
class Specialty {
  final int id;
  final String name;

  Specialty({
    required this.id,
    required this.name,
  });
}

class Doctors {
  final int id;
  final int idSpecialty;
  final String name;
  final String description;
  final String time;
  final String address;
  final String contacts;

  Doctors({
    required this.id,
    required this.idSpecialty,
    required this.name,
    required this.description,
    required this.time,
    required this.address,
    required this.contacts,
  });
}
