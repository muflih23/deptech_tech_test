import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/inputs.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class NameEdit extends StatelessWidget {
  NameEdit({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final TextEditingController first = TextEditingController();
  final TextEditingController last = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        elevation: 0,
        title: const Text("Ganti nama"),
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
                PrimaryText(size: 20, text: "Nama pengguna hanya boleh terdiri dari alfabet (A - z)", color: primaryText),
                const SizedBox(height: 32,),
                TextTypeInput(
                  text: "Nama depan",
                  hint: "John",
                  controller: first,
                  validator: firstnameValidator,
                ),
                const SizedBox(height: 24,),
                TextTypeInput(
                  text: "Nama belakang",
                  hint: "Doe",
                  controller: last,
                  validator: lastnameValidator,
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