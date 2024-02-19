import 'package:beyond_ableism/features/users/domain/entities/hobbies_entity.dart';

class UserEntity {
  final String uid;
  final String email;
  final String name;
  final String address;
  final String shortIntro;
  final String bio;
  final String disability;
  final List<HobbiesEntity> hobbies;

  // Add other relevant user information

  UserEntity(
    this.shortIntro,
    this.bio,
    this.disability,
    this.hobbies, {
    required this.name,
    required this.address,
    required this.uid,
    required this.email,
  });
}
