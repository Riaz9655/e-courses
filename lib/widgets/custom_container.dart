import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final String text2;

  const CustomContainer({super.key, required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade900
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(text, style: TextStyle(color: Colors.blueAccent),),
            ),
            const SizedBox(width: 10,),
            Text(
              text2, style: TextStyle(color: Colors.grey, fontSize: 16),)
          ],
        ),
      ),
    );
  }
}