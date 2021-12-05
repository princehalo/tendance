import 'package:flutter/material.dart';
//import 'package:tendance/ui/home/student_home.dart';
import 'package:flutter/cupertino.dart';

class StudentAddPage extends StatefulWidget {
  //const StudentAddPage({Key? key}) : super(key: key);

  @override
  _StudentAddPageState createState() => _StudentAddPageState();
}

class _StudentAddPageState extends State<StudentAddPage> {
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
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      /**text: "Add",
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263064),
                          fontSize: 22,
                          ),**/
                      children: [
                        TextSpan(
                          text: " Attendance",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF263064),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              /**Row(
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
                  ) **/
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

 