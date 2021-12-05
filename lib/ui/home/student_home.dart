import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:tendance/constants.dart';
import 'package:tendance/model/user.dart';
import 'package:tendance/services/helper.dart';
import 'package:tendance/ui/auth/authentication_bloc.dart';
import 'package:tendance/ui/auth/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:tendance/ui/courses/student_courses.dart';
import 'package:tendance/ui/explore/student_explore..dart';
//import 'package:tendance/ui/home/student_home.dart';
import 'package:tendance/ui/add/student_add.dart';
import 'package:tendance/ui/schedule/student_schedule.dart';

const _tPages = <String, IconData>{
  'Add': Icons.add,
  'Schedule': Icons.calendar_today_outlined,
  'Home': Icons.home_outlined,
  'Courses': Icons.book_outlined,
  'Explore': Icons.search_outlined,
};

class TendEd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TendEd',
      theme: ThemeData(
        //primarySwatch: const Color(COLOR_PRIMARY2),
      ),
      home: HomeScreen(title: 'TendEd'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final User? user;

  final String? title;

  const HomeScreen({Key? key, this.user, this.title}) : super(key: key);



  @override
  State createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  TabStyle _tabStyle = TabStyle.reactCircle;

  //bool _showCvxBottomBar = false;

  //int _selectedItemIndex = 2;
  final List pages = [
    StudentAddPage(),
    StudentSchedulePage(),
    HomeScreen(),
    StudentCoursesPage(),
    StudentExplorePage(),
  ];

  late User? user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.authState == AuthState.unauthenticated) {
          pushAndRemoveUntil(context, const WelcomeScreen(), false);
        }
      },

      child: Scaffold(
        bottomNavigationBar: ConvexAppBar.badge(
          const <int, dynamic>{},
          style: _tabStyle,
          items: <TabItem>[
            for (final entry in _tPages.entries)
              TabItem(icon: entry.value, title: entry.key)
          ],
          initialActiveIndex: 2,
          onTap: (int i) {
            setState(() {
              //_selectedItemIndex = i;
            });
          },
        ),

      body: BackdropScaffold(
          appBar: BackdropAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/tended_logo.png',
                      fit: BoxFit.cover,
                      height: 40,
                    ),
                  )
                ],
              )),
          backLayer: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFD4E7FE),
                          Color(0xFFF0F0F0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.2, 0.3])),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                            text: "Sun",
                            style: TextStyle(
                                color: Color(0xFF263064),
                                fontSize: 12,
                                fontWeight: FontWeight.w900),
                            children: [
                              TextSpan(
                                text: " 25 Jul",
                                style: TextStyle(
                                    color: Color(0xFF263064),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.2),
                                blurRadius: 12,
                                spreadRadius: 8,
                              )
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/augusta_cct.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi User!",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF343E87),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Student ID: CCT2417",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blueGrey,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        SizedBox(width: 49),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 1, color: Color(0XFF343E87)),
                              ),
                              child: TextButton(
                                onPressed: (){
                                    context.read<AuthenticationBloc>().add(LogoutEvent());
                                  },
                                child: Text(
                                 "Logout",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF343E87),
                                  ),
                                ),
                                //child: const Icon(Icons.exit_to_app, color: Color(0XFF343E87),)
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          frontLayer: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              //height: MediaQuery.of(context).size.height - 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  buildTitleRow("TODAY'S CLASSES", 3),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        buildClassItem(),
                        buildClassItem(),
                        buildClassItem(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  buildTitleRow("YOUR TASKS", 4),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildTaskItem(
                            3, "The Basic of Typography II", Colors.red),
                        buildTaskItem(3, "AI: AI with Python...", Colors.green),
                        buildTaskItem(
                            3, "Data Struct: Algorithm Types...", Colors.green),
                        buildTaskItem(3, "Design Psychology: Principle of...",
                            Colors.green),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )),
    ),);
  }

  Container buildTaskItem(int numDays, String courseTitle, Color color) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(12),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deadline",
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "$numDays days left",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 100,
            child: Text(
              courseTitle,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Row buildTitleRow(String title, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: title,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "($number)",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ]),
        ),
        Text(
          "See all",
          style: TextStyle(
              fontSize: 12,
              color: Color(0XFF3E3993),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Container buildClassItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9FB),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "07:00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "AM",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  "The Basic of Typography II",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Text(
                      "Room C4, Top floor Software Engineering Building",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/faculty_felix.png'),
                    radius: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Faculty Felix",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
