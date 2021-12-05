// /*
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:tendance/model/students.dart';
//
// class Courses {
//   String? id;
//   String? facultyUID;
//   String? name;
//   String? courseCode;
//   String? session;
//   String? noOfLectures;
//   String? totalCreditHours;
//   String? creditHoursDone;
//   String? noOfStudents;
//
//   Courses(
//     {this.id,
//       this.facultyUID,
//       this.name,
//       this.courseCode,
//       this.session,
//       this.noOfLectures,
//       this.totalCreditHours,
//       this.creditHoursDone,
//       this.noOfStudents
//     });
//
//   Courses.initialDate() : id = '',
//   facultyUID = '',
//   name = '',
//   courseCode = '',
//   session = '',
//   noOfLectures = '0',
//   totalCreditHours = '0',
//   creditHoursDone = '0',
//   noOfStudents = '0';
//
//   Courses.fromSnapshot(DocumentSnapshot snapshot)
//       : id = snapshot['id'],
//         facultyUID = snapshot['faculty_uid'],
//         name = snapshot['name'],
//         courseCode = snapshot['course_code'],
//         session = snapshot['session'],
//         noOfLectures = snapshot['no_of_lectures'],
//         totalCreditHours = snapshot['total_credit_hours'],
//         creditHoursDone = snapshot['credit_hours_done'],
//         noOfStudents = snapshot['no_of_students'];
//
//   @override
//   String toString() {
//     return "Course ID: $id , Faculty ID: $facultyUID , Course Name: $name ($courseCode)";
//   }
// }
//
// class CourseIDAndFacultyID {
//   String? facultyUID;
//   String? courseID;
//
//   CourseIDAndFacultyID({this.facultyUID, this.courseID});
//
//   CourseIDAndFacultyID.fromMap(Map<dynamic, dynamic> map)
//       : facultyUID = map['faculty_uid'],
//         courseID = map['course_id'];
// }
//
// class CourseNameAndID {
//   String name;
//   String id;
//
//   CourseNameAndID(this.name, this.id);
//
//   CourseNameAndID.fromMap(Map<dynamic, dynamic> map)
//       : name = map['name'],
//         id = map['id'];
//
//   String get courseName {
//     return name;
//   }
//
//   String get courseID {
//     return id;
//   }
//
//   set courseName(String _cName) {
//     name = _cName;
//   }
//
//   set courseID(String _cID) {
//     name = _cID;
//   }
// }*/
