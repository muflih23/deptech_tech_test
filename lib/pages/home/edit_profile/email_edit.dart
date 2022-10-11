import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/inputs.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailEdit extends StatelessWidget {
  EmailEdit({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

  String? emailValidator(value){
    if(value == null || value.isEmpty){
      return "Email tidak boleh kosong!";
    } else if ( !EmailValidator.validate(value, true) ){
      return "Email tidak valid !";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ganti Email"),
        foregroundColor: darkerPrimary,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 64,),
                Row(
                  children: [
                    PrimaryText(size: 20, text: "Gunakan email yang valid", color: primaryText),
                  ],
                ),
                const SizedBox(height: 32,),
                TextTypeInput(
                  text: "Email",
                  hint: "johndoe@example.com",
                  controller: email,
                  validator: emailValidator,
                ),
                const SizedBox(height: 48),
                LongButton(
                  action: () {}, 
                  bg: theme, 
                  fg: whiteText, 
                  text: "Simpan"
                ),
                const SizedBox(height: 24,),
                LongButton(
                  action: () {},
                  bg: whiteText,
                  fg: theme,
                  text: "Batalkan",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}