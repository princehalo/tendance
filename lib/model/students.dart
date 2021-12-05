// /*
// import 'package:tendance/model/courses.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class Students {
//   String name;
//   String email;
//   String gender;
//   String phoneNumber;
//   String address;
//   String session;
//   String program;
//   String semester;
//   String matNumber;
//   int noOfAttendedLectures;
//   Timestamp attendanceTime;
//   List<CourseIDAndFacultyID> courses;
//
//   Students({
//     this.name = '',
//     this.email = '',
//     this.gender = '',
//     this.phoneNumber = '',
//     this.address = '',
//     this.session = '',
//     this.program = '',
//     this.semester = '',
//     this.matNumber = '',
//   });
//
//   Students.fromSnapShot(DocumentSnapshot snapshot, int noOfAL)
//       : name = snapshot['name'] ?? '',
//         email = snapshot['email'] ?? '',
//         gender = snapshot['gender'] ?? '',
//         phoneNumber = snapshot['phoneNumber'] ?? '',
//         address = snapshot['address'] ?? '',
//         session = snapshot['session'] ?? '',
//         program = snapshot['program'] ?? '',
//         semester = snapshot['semester'] ?? '',
//         matNumber = snapshot['matNumber'] ?? '',
//         noOfAttendedLectures = noOfAL,
//         courses = snapshot['courses'].map<CourseIDAndFacultyID>((course){
//           return CourseIDAndFacultyID.fromMap(course);
//         }).toList();
//
//   Students.fromSnapshotWithTimeStamp(
//       DocumentSnapshot snapshot, Timestamp timestamp)
//       : name = snapshot['name'] ?? '',
//         email = snapshot['email'] ?? '',
//         gender = snapshot['gender'] ?? '',
//         phoneNumber = snapshot['phoneNumber'] ?? '',
//         address = snapshot['address'] ?? '',
//         session = snapshot['session'] ?? '',
//         program = snapshot['program'] ?? '',
//         semester = snapshot['semester'] ?? '',
//         matNumber = snapshot['mat_number'] ?? '',
//         attendanceTime = timestamp,
//         courses = snapshot['courses'].map<CourseIDAndFacultyID>((course) {
//           return CourseIDAndFacultyID().fromMap(course);
//         }).toList();
//
//   @override
//   String toString() {
//     return "Name: $name, "
//         "Email: $email, "
//         "PhoneNumber: $phoneNumber, "
//         "MatNumber: $matNumber, "
//         "Courses: ${courses.toString()}";
//   }
// }
//
// class StudentUID {
//   final String uid;
//
//   StudentUID(this.uid);
// }
//
// class RegisteredStudents {
//   int? noOfAttendedLectures;
//   int? noOfAbsents;
//
//   RegisteredStudents({this.noOfAbsents, this.noOfAttendedLectures});
// }
//
// class PresentStudents {
//   List<StudentUID> present;
//
//   PresentStudents({required this.present});
// }*/
