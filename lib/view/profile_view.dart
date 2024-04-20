import 'package:e_course/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account',style: TextStyle(color: Colors.green),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade900,
                child:  IconButton(onPressed: (){}, icon: const Icon(Icons.edit,color: Colors.white,)),),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/coding.png',height: 100,),
                      Positioned(
                        left: 30,
                          top: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade900,
                              child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.white,))))
                    ],
                  ),),
               Text('Muhammad Riaz',style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 24,color: Colors.white),)),
              const SizedBox(height: 15,),
              const Text('mriaz875@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 20),),
              const Text('+923339655590',style: TextStyle(color: Colors.grey,fontSize: 18),),
              const SizedBox(height: 15,),
              Text('Became an Instructor',style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 24,color: Colors.green),)),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade900
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Download Options',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade900
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Download Options',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              MyButton(text: 'Sign Out', onPressed: (){}, color: Colors.grey.shade900, textColor: Colors.blueAccent),
            ],
          ),
        ),
      ),
    );
  }
}
