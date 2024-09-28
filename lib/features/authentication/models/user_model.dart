import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ecommerce/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // Helper function to format phone number
  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  // Helper function to get full name
  String get fullName => '$firstName $lastName';

  // Static function to generate a user from the full name
  static String generateUserName(fullName) {
    String camelCaseName = fullName.camelCase();
    String userNameWithPrefix = 'cwt_$camelCaseName';
    return userNameWithPrefix;
  }

  // Static function to create an empty user model
  static UserModel empty() {
    return UserModel(
      id: '',
      firstName: '',
      lastName: '',
      userName: '',
      email: '',
      phoneNumber: '',
      profilePicture: '',
    );
  }

  // Convert a user model to a Firebase document
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  // Factory method to create a user model from a Firebase document snapshot
  factory UserModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data();
      return UserModel(
        id: document.id,
        firstName: data?['firstName'] ?? '',
        lastName: data?['lastName'] ?? '',
        userName: data?['userName'] ?? '',
        email: data?['email'] ?? '',
        phoneNumber: data?['phoneNumber'] ?? '',
        profilePicture: data?['profilePicture'] ?? '',
      );
    } else {
      return UserModel.empty();
    }
  }
}
