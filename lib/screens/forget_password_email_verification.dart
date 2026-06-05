import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/forget_password_pin_verify.dart';
import 'package:task_manager/screens/login_screen.dart';
import 'package:task_manager/screens/sign_up_screen.dart';

import '../utils/app_color.dart';
import '../widget/screen_bachground.dart';
class ForgetPasswordEmailVerification extends StatefulWidget {
  const ForgetPasswordEmailVerification({super.key});

  @override
  State<ForgetPasswordEmailVerification> createState() => _ForgetPasswordEmailVerificationState();
}

class _ForgetPasswordEmailVerificationState extends State<ForgetPasswordEmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Your Email Address',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('A 6 digit verification pin will sent to your email address'),
            SizedBox(height: 25,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            SizedBox(height: 25,),
            FilledButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:  (context)=> ForgetPasswordPinVerify()));

            }, child: Icon(Icons.arrow_circle_right)),
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
