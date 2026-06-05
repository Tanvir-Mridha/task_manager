import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/widget/screen_bachground.dart';

import '../utils/app_color.dart';
import 'login_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Join With Us',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 25,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'First Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Last Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Mobile'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 25,),
            FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right)),
            SizedBox(height: 55,),
            Center(
              child: Column(
                children: [
                  RichText(text: TextSpan(
                      text: "Have account ? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                            text: 'Sign In',style: TextStyle(
                            color: AppColor.Pcolor,
                          fontWeight: FontWeight.bold
                        ),recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.push(context,MaterialPageRoute(builder:  (context)=> LoginScreen()));
                        }
                        )
                      ]
                  )
                  )
                ],
              ),
            )

          ],
        ),
      )),
    );
  }
}
