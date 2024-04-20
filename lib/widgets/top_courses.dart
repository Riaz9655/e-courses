import 'package:e_course/widgets/my_button.dart';
import 'package:e_course/models/courses.dart';
import 'package:e_course/models/top_courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCoursesTile extends StatelessWidget {
  final TCourses tcourse;
  final void Function()? onTap;
  const TopCoursesTile({super.key, required this.tcourse,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 8),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(tcourse.imagePath,height: 80,fit: BoxFit.cover,),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tcourse.name,style: GoogleFonts.dmSerifDisplay(
                  textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
                Text("\$"+tcourse.price,style: GoogleFonts.dmSerifDisplay(
                  textStyle: TextStyle(fontSize: 16,color: Colors.white),),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    MyButton(text: 'Buy Now', onPressed: (){},color: Colors.green,textColor: Colors.white,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.lock,color: Colors.white,)),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
