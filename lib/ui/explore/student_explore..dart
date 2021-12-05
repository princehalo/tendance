import 'package:flutter/material.dart';

class StudentExplorePage extends StatefulWidget {
  //const StudentExplorePage({Key? key}) : super(key: key);

  @override
  _StudentExplorePageState createState() => _StudentExplorePageState();
}

class _StudentExplorePageState extends State<StudentExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image(
            image: AssetImage('images/appbar_image.jpg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  newsCategory("All"),
                  SizedBox(width: 5,),
                  newsCategory("Latest"),
                  SizedBox(width: 5,),
                  newsCategory("National Diploma"),
                  SizedBox(width: 5,),
                  newsCategory("Oracle"),
                  SizedBox(width: 5,),
                  newsCategory("COMPTIA"),
                  SizedBox(width: 5,),
                  newsCategory("Microsoft"),
                  SizedBox(width: 5,),
                ],
              ),
            ),
        ),
      ),
    );
  }

  Container newsCategory(String category) {
   return Container(
     alignment: Alignment(5,5),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Container(
           alignment: Alignment.center,
           //width: 100,
           height: 30,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(13),
             border: Border.all(width: 1, color: Colors.white),
           ),
           child: Text(category,
             style: TextStyle(
               fontSize: 13,
               fontWeight: FontWeight.normal,
               color: Colors.white,
             ),
           ),
         ),
       ],
     ),
   );
  }

}
