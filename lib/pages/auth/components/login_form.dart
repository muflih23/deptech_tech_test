import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/inputs.dart';
import 'package:deptech_flutter_reminder/pages/home/dashboard.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();

  
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose(){
    email.dispose();
    password.dispose();
    super.dispose();
  }

  String? emailValidator(value){
    if(value == null || value.isEmpty){
      return "Email tidak boleh kosong!";
    } else if ( !EmailValidator.validate(value, true) ){
      return "Email tidak valid !";
    }
    return null;
  }

  String? passwordValidator(value){
    if( value == null || value.isEmpty ){
      return "Password tidak boleh kosong !";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextTypeInputWithLogo(
              text: "Email",
              hint: "example@domain.com",
              formIcon: Icons.email_outlined,
              controller: email,
              validator: emailValidator,
            ),
            const SizedBox(height: 16,),
            PasswordTypeInputWithLogo(
              text: "Password",
              validator: passwordValidator,
              controller: password,
            ),
            const SizedBox(height: 128,),
            LongButton(action: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => Home(
                    feedback: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 5),
                          content: const Text("Login berhasil, Selamat datang !"),
                          backgroundColor: success,
                        )
                      );
                    },
                  ))
                )
              );
            }, bg: theme, fg: whiteText, text: "MASUK")
          ],
        ),
      ),
    );
  }
}