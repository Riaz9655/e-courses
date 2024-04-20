import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed, required this.color, required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color
        ),
        child: Center(child: Text(text,style: GoogleFonts.dmSerifDisplay(
    textStyle: TextStyle(fontSize: 18,color:textColor),)),
      ),
      ));
  }
}
