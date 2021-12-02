import 'dart:io';

class User {
  String userID;
  String firstName;
  String lastName;
  String gender;
  String emailAddress;
  String phoneNumber;
  String address;
  String session;
  String program;
  String semester;
  String matNumber;
  String username;
  String password;
  String profilePictureURL;
  String appIdentifier;

  User({
    this.userID = '',
    this.firstName = '',
    this.lastName = '',
    this.gender = '',
    this.emailAddress = '',
    this.phoneNumber = '',
    this.address = '',
    this.session = '',
    this.program = '',
    this.semester = '',
    this.matNumber = '',
    this.username = '',
    this.password = '',
    this.profilePictureURL = '',
  }) : appIdentifier = 'CCT Tendance ${Platform.operatingSystem}';

  String fullName() => '$firstName $lastName';

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
      userID: parsedJson['id'] ?? parsedJson['userID'] ?? '',
      firstName: parsedJson['firstName'] ?? '',
      lastName: parsedJson['lastName'] ?? '',
      gender: parsedJson['gender'] ?? '',
      emailAddress: parsedJson['emailAddress'] ?? '',
      phoneNumber: parsedJson['phoneNumber'] ?? '',
      address: parsedJson['address'] ?? '',
      session: parsedJson['session'] ?? '',
      program: parsedJson['program'] ?? '',
      semester: parsedJson['semester'] ?? '',
      matNumber: parsedJson['matNumber'] ?? '',
      username: parsedJson['username'] ?? '',
      password: parsedJson['password'] ?? '',
      profilePictureURL: parsedJson['profilePictureURL'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return{
      'id': userID,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'emailAddress': emailAddress,
      'phoneNumber': phoneNumber,
      'address': address,
      'session': session,
      'program': program,
      'semester': semester,
      'matNumber': matNumber,
      'username': username,
      'password': password,
      'profilePictureURL': profilePictureURL,
      'appIdentifier': appIdentifier
    };
  }
}