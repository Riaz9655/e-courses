import 'package:e_course/models/courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  final void Function()? onTap;
  const CourseTile({super.key, required this.course,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 8),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(course.imagePath,height: 25,),
            const SizedBox(width: 10,),
            Text(course.name,style: GoogleFonts.dmSerifDisplay(
              textStyle: TextStyle(fontSize: 20,color: Colors.grey),)),
          ],
        ),

      ),
    );
  }
}
