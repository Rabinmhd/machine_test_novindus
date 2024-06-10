class Patient {
  final String name;
  final String treatment;

  Patient({required this.name, required this.treatment});

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      name: json['name'],
      treatment: json['treatment'],
    );
  }
}
