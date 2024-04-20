import 'package:e_course/widgets/course_tile.dart';
import 'package:e_course/widgets/my_textform_field.dart';
import 'package:e_course/widgets/top_courses.dart';
import 'package:e_course/models/courses.dart';
import 'package:e_course/models/top_courses.dart';
import 'package:e_course/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final List<Course> _courseMenu = [
    Course(
        name: 'Design',
        imagePath: 'assets/images/design.png',
    ),
    Course(
        name: 'Photography',
        imagePath: 'assets/images/camera.png',
    ),
    Course(
        name: 'Programming',
        imagePath: 'assets/images/programming.png',
    ),
    Course(
        name: 'Bussiness',
        imagePath: 'assets/images/bussiness.png',
    ),
    Course(
        name: 'Cooking',
        imagePath: 'assets/images/cooking.png',
    ),
  ];
  final List<TCourses> _tCoursesMenu = [
    TCourses(
        name: 'JAVA Complete Course',
        price: '99.99',
        imagePath: 'assets/images/programming.png',
        rating: '4.5'),
    TCourses(
        name: 'Dart Complete Course',
        price: '66.00',
        imagePath: 'assets/images/coding.png',
        rating: '4.5'),
    TCourses(
        name: 'HTML Complete Course',
        price: '345.99',
        imagePath: 'assets/images/ecourses.png',
        rating: '4.5'),
    TCourses(
        name: 'PYTHON Complete Course',
        price: '29.99',
        imagePath: 'assets/images/bussiness.png',
        rating: '4.5'),
    TCourses(
        name: 'Ui_Ux Complete Course',
        price: '11.99',
        imagePath: 'assets/images/programming.png',
        rating: '4.5'),

  ];

  List<Course> get courseMenu => _courseMenu;
  List<TCourses> get tCoursesMenu => _tCoursesMenu;

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          title: Text('Hi, Muhammad',style: GoogleFonts.dmSerifDisplay(
            textStyle: const TextStyle(fontSize: 24,color: Colors.green),),),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        actions: [
          const Icon(Icons.notifications_on_sharp,size: 30,color: Colors.white,),
          const SizedBox(width: 10,),
          const Icon(Icons.filter_list,size: 30,color: Colors.white,),
          const SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(onTap: (){ Get.to(ProfileView());},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade500,
                child: const Icon(Icons.person),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Find a Course you want to learn.',style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 40,color: Colors.green),),),
              const SizedBox(height: 20,),
              CustomTextField(
                controller: searchController,
                hintText: 'Search Course',
                prefixIcon: Icons.search,
                prefixIconColor: Colors.green,
                fillColor: Colors.grey.shade900,
              ),
              const SizedBox(height: 20,),
              Text('Categories',style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 20,color: Colors.white),),),
              Container(
                height: 65,
                child: ListView.builder(
                    itemCount: courseMenu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CourseTile(course: courseMenu[index],
                          onTap: () {  },)
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              Text('Top Courses',style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 20,color: Colors.white),),),
              Container(
                height: 300,
                child: ListView.builder(
                    itemCount: _tCoursesMenu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TopCoursesTile(tcourse: tCoursesMenu[index],
                            onTap: () { Get.to(DetailsView(tcource: _tCoursesMenu[index]),transition: Transition.zoom); },)
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu_book_sharp),onPressed: (){},
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
 