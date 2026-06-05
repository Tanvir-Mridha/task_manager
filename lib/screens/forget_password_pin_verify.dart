import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/forget_password_set_password.dart';

import '../utils/app_color.dart';
import '../widget/screen_bachground.dart';
import 'login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class ForgetPasswordPinVerify extends StatefulWidget {
  const ForgetPasswordPinVerify({super.key});

  @override
  State<ForgetPasswordPinVerify> createState() => _ForgetPasswordPinVerifyState();
}

class _ForgetPasswordPinVerifyState extends State<ForgetPasswordPinVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('PIN Verification',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('A 6 digit verification pin will sent to your email address'),
            SizedBox(height: 25,),
            PinCodeTextField (
              appContext: context,
              length: 6,
              obscureText: true,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(7),
                fieldWidth: 40,
                fieldHeight: 50,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: Colors.grey.shade200,
                selectedColor: AppColor.Pcolor
              ),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 25,),
            FilledButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:  (context)=> ForgetPasswordSetPassword()));

            }, child: Text(
              'Verify',
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
