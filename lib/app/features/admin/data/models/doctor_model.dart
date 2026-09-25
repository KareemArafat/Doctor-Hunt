class DoctorModel {
  final String? id;
  final String? photo;
  final String name;
  final String specialty;
  final String status;

  new({
    this.id,
    this.photo,
    required this.name,
    required this.specialty,
    required this.status,
  });

  factory DoctorModel.fromFireBase(Map<String, dynamic> data, String id) {
    return DoctorModel(
      id: id,
      photo: data['photo'],
      name: data['name'],
      specialty: data['specialty'],
      status: data['status'],
    );
  }

  Map<String, dynamic> toFireBase() {
    return {
      'name': name,
      'specialty': specialty,
      'status': status,
      if (photo != null) 'imageUrl': photo,
    };
  }
}
