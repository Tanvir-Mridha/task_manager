import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widget/screen_bachground.dart';
import 'login_screen.dart';
class ForgetPasswordSetPassword extends StatefulWidget {
  const ForgetPasswordSetPassword({super.key});

  @override
  State<ForgetPasswordSetPassword> createState() => _ForgetPasswordSetPasswordState();
}

class _ForgetPasswordSetPasswordState extends State<ForgetPasswordSetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Set Password',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('Minimum length password 8 character with latter and number combination'),
            SizedBox(height: 25,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirm Password'
              ),
            ),
            SizedBox(height: 25,),
            FilledButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:  (context)=> ForgetPasswordSetPassword()));

            }, child: Text(
              'Confirm',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
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
