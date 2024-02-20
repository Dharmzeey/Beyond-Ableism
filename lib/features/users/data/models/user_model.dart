class UserModel {
  final String id;
  // final String shortIntro;
  // final String bio;
  // final String disability;
  // final String hobbies;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String address;

  UserModel({
    required this.username,
    required this.phoneNumber,
    required this.id,
    // required this.shortIntro,
    // required this.bio,
    // required this.disability,
    // required this.hobbies,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.email,
  });

  String get fullName => '$firstName $lastName';

// Convert to json to store in Firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'Address': address
    };
  }

  // factory UserModel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //       id: document.id,
  //       firstName: data['FirstName'] ?? '',
  //       lastName: data['LastName'] ?? '',
  //       username: data['Username'] ?? '',
  //       email: data['Email'] ?? '',
  //       phoneNumber: data['PhoneNumber'] ?? '',
  //       address: data['Address'] ?? '',
  //     );
  //   }
  //   return '';
  // }
}
