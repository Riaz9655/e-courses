import 'package:e_course/view/dashboard_view.dart';
import 'package:e_course/view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textform_field.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _nameController = TextEditingController();
    final _phoneController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: Image.asset('assets/images/ecourses.png',height: 150,))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade900,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SignUp',style: TextStyle(color: Colors.green,fontSize: 20),),
                      Text('Enter your Data to Register',style: TextStyle(color: Colors.grey,fontSize: 12),),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        hintText: 'Full Name',
                        prefixIcon: Icons.person,
                        prefixIconColor: Colors.blue,
                        fillColor: Colors.grey.shade900,
                        controller: _nameController,),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        hintText: 'Email Address',
                        prefixIcon: Icons.email,
                        fillColor: Colors.grey.shade900,
                        prefixIconColor: Colors.blue,
                        controller: _emailController,),
                      const SizedBox(height: 10,),
                      CustomTextField(
                        hintText: 'Phone Number',
                        prefixIcon: Icons.phone,
                        prefixIconColor: Colors.blue,
                        fillColor: Colors.grey.shade900,
                        controller: _phoneController,),
                      const SizedBox(height: 10,),
                      CustomTextField(
                        hintText: 'Password',
                        prefixIcon: Icons.lock,
                        prefixIconColor: Colors.blue,
                        fillColor: Colors.grey.shade900,
                        suffixIcon: Icons.remove_red_eye,
                        suffixIconColor: Colors.red,
                        controller: _passwordController,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot Password?',style: TextStyle(color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height:20,),
          MyButton(text: 'Register', onPressed: (){
            Get.to(DashboardView(),transition: Transition.fadeIn);
          },color: Colors.grey.shade900,textColor: Colors.green,),
          const SizedBox(height:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text("Alreday have an Account?",style: TextStyle(color: Colors.grey),),
              const SizedBox(width: 5,),
              InkWell(
                onTap: (){
                  Get.off(LoginView(),transition: Transition.fadeIn);
                },
                  child: Text("Sign in?",style: TextStyle(color: Colors.blue),)),
            ],
          ),

        ],
      ),
    );
  }
}
