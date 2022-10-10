import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/inputs.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/pages/home/dashboard.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class BioForm extends StatefulWidget {
  const BioForm({ Key? key }) : super(key: key);

  @override
  State<BioForm> createState() => _BioFormState();
}

class _BioFormState extends State<BioForm> {

  final _formKey = GlobalKey<FormState>();
  
  final TextEditingController first = TextEditingController();
  final TextEditingController last = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController birth = TextEditingController();

  @override
  void dispose(){
    first.dispose();
    last.dispose();
    email.dispose();
    gender.dispose();
    birth.dispose();
    super.dispose();
  }

  String? firstnameValidator(value) {
    final alphabetical = RegExp(r'^[a-zA-Z]');
    if(value == null || value.isEmpty){
      return "Nama tidak boleh kosong !";
    } else if ( !alphabetical.hasMatch(value) ){
      return "Nama hanya boleh diisi oleh alfabet !";
    }
    return null;
  }

  String? lastnameValidator(value) {
    final alphabetical = RegExp(r'^[a-zA-Z]');
    if ( value != null ){
      if ( !alphabetical.hasMatch(value) ){
        return "Nama hanya boleh diisi oleh alfabet !";
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

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
    return SizedBox(
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextTypeInput(
              controller: first,
              text: "Nama depan",
              hint: "John",
              validator: firstnameValidator,
            ),
            const SizedBox(height: 20,),
            TextTypeInput(
              controller: last,
              text: "Nama belakang",
              hint: "Doe",
              validator: lastnameValidator,
            ),
            const SizedBox(height: 20,),
            TextTypeInput(
              controller: email,
              text: "Email",
              hint: "John",
              validator: emailValidator,
            ),
            const SizedBox(height: 20,),
            const DropDownInput(defaultvalue: "Laki laki", text: "Jenis kelamin"),            
            const SizedBox(height: 128,),
            LongButton(
              action: () {}, 
              bg: theme, 
              fg: whiteText, 
              text: "SIMPAN"
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {},
              child: PrimaryText(
                color: theme,
                text: "Batalkan",
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}