import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorModel {
  final String? id;
  final String? photo;
  final String name;
  final String specialty;
  final double rating;
  final int reviews;
  final bool isActive;
  final bool isPopular;
  final DateTime createdAt;

  DoctorModel({
    this.id,
    this.photo,
    required this.name,
    required this.specialty,
    this.rating = 0,
    this.reviews = 0,
    this.isActive = true,
    this.isPopular = false,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory DoctorModel.fromFirebase(Map<String, dynamic> data, String id) {
    return DoctorModel(
      id: id,
      photo: data['photo'],
      name: data['name'],
      specialty: data['specialty'],
      rating: data['rating'],
      reviews: data['reviews'],
      isActive: data['isActive'],
      isPopular: data['isPopular'],
      createdAt: data['createdAt'].toDate(),
    );
  }

  Map<String, dynamic> toFirebase() {
    return {
      'isPopular': isPopular,
      'photo': photo,
      'name': name,
      'specialty': specialty,
      'rating': rating,
      'reviews': reviews,
      'isActive': isActive,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  DoctorModel copyWith({
    String? id,
    String? photo,
    String? name,
    String? specialty,
    double? rating,
    int? reviews,
    bool? isActive,
    bool? isPopular,
    DateTime? createdAt,
  }) {
    return DoctorModel(
      id: id ?? this.id,
      photo: photo ?? this.photo,
      name: name ?? this.name,
      specialty: specialty ?? this.specialty,
      rating: rating ?? this.rating,
      reviews: reviews ?? this.reviews,
      isActive: isActive ?? this.isActive,
      isPopular: isPopular ?? this.isPopular,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
