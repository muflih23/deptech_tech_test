import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/pages/auth/components/login_form.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: screenHeight,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Column(
                  children: [
                     const TitleText(text: "Schedule.in"),
                     const SizedBox(height: 16,),
                     PrimaryText(size: 20, color: lighterPrimary, text: "Masuk untuk melanjutkan"),
                  ],
                ),
                const SizedBox(height: 100,),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}