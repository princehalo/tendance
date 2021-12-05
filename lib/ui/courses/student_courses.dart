import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:tendance/ui/schedule/student_schedule.dart';

class StudentCoursesPage extends StatefulWidget {
  //const CoursesPage({Key? key}) : super(key: key);

  @override
  _StudentCoursesPageState createState() => _StudentCoursesPageState();
}

class _StudentCoursesPageState extends State<StudentCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          alignment: Alignment.topCenter,
          color: Color(0xFFF0F0F0),
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.add_circle_outline, color: Colors.grey),
                  SizedBox(
                    width: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Courses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF263064),
                        fontSize: 22,
                      ),
                      /**children: [
                          TextSpan(
                          text: " 2021",
                          style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          ),
                          ),
                          ],**/
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  TextButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => SimpleDialog(
                            title: const Text('Courses Details', style: TextStyle(color: Colors.blueGrey),),
                            children: [

                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.add),
                      label: Text('Add Courses'))
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 100,
          child: Container(
            height: MediaQuery.of(context).size.height, //-160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 30),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

