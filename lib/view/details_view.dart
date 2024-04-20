import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_container.dart';
import '../widgets/my_button.dart';
import '../models/top_courses.dart';
class DetailsView extends StatefulWidget {
  final TCourses tcource;
  const DetailsView({super.key, required this.tcource});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
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
        imagePath: 'assets/images/coding2.png',
        rating: '4.5'),
    TCourses(
        name: 'PYTHON Complete Course',
        price: '29.99',
        imagePath: 'assets/images/bussiness.png',
        rating: '4.5'),
    TCourses(
        name: 'UiUx Complete Course',
        price: '11.99',
        imagePath: 'assets/images/programming.png',
        rating: '4.5'),

  ];
  List<TCourses> get tCoursesMenu => _tCoursesMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                Image.asset(widget.tcource.imagePath,height: 200,),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.tcource.name,
                      style: GoogleFonts.dmSerifDisplay(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.white),),),
                    Text('Price  \$'+ widget.tcource.price,
                      style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(fontSize: 20,color: Colors.green),),),
                  ],
                ),
                const SizedBox(height: 25,),
                const Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                const Text('A design course typically refers to an educational program or series of classes that teach principles and techniques related to design in various fields such as graphic design, interior design, fashion design, industrial design, web design, and more. These courses may cover topics like color theory, typography, layout, composition, design software skills, design history, and design principles.',
                  style:TextStyle(color: Colors.grey,fontSize: 14,height: 2) ,),
                Column(
                  children: [
                    Text('Course Included',
                      style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(fontSize: 22,color: Colors.white),),),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          text: '01',
                          text2: '30 Lessons',
                        ),
                        CustomContainer(
                          text: '02',
                          text2: 'Assigments',
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          text: '03',
                          text2: 'Support Files',
                        ),
                        CustomContainer(
                          text: '04',
                          text2: 'Certificates',
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    MyButton(
                      text: 'Enroll Now', onPressed: () {  }, color: Colors.green, textColor: Colors.white,)
                  ],
                )
              ],
            ),
          )),

        ],
      ),

    );
  }
}
