import 'dart:io';

class User {
  String email;
  String firstName;
  String lastName;
  String userID;
  String profilePictureURL;
  String appIdentifier;
  String gender;
  String phoneNumber;
  String address;
  String session;
  String program;
  String semester;
  String matNumber;
  String username;
  String password;


  User(
      {this.email = '',
      this.firstName = '',
      this.lastName = '',
      this.userID = '',
        this.gender = '',
        this.phoneNumber = '',
        this.address = '',
        this.session = '',
        this.program = '',
        this.semester = '',
        this.matNumber = '',
        this.username = '',
        this.password = '',
      this.profilePictureURL = ''})
      : appIdentifier = 'Flutter Login Screen ${Platform.operatingSystem}';

  String fullName() => '$firstName $lastName';

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
        email: parsedJson['email'] ?? '',
        firstName: parsedJson['firstName'] ?? '',
        lastName: parsedJson['lastName'] ?? '',
        userID: parsedJson['id'] ?? parsedJson['userID'] ?? '',
        gender: parsedJson['gender'] ?? '',
        phoneNumber: parsedJson['phoneNumber'] ?? '',
        address: parsedJson['address'] ?? '',
        session: parsedJson['session'] ?? '',
        program: parsedJson['program'] ?? '',
        semester: parsedJson['semester'] ?? '',
        matNumber: parsedJson['matNumber'] ?? '',
        username: parsedJson['username'] ?? '',
        password: parsedJson['password'] ?? '',
        profilePictureURL: parsedJson['profilePictureURL'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'id': userID,
      'profilePictureURL': profilePictureURL,
      'appIdentifier': appIdentifier,
      'gender': gender,
      'phoneNumber': phoneNumber,
      'address': address,
      'program' : program,
      'semester': semester,
      'matNumber': matNumber,
      'username': username,
      'password': password,
    };
  }
}
