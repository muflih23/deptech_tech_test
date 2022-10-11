import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/inputs.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class EditGender extends StatelessWidget {
  EditGender({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        elevation: 0,
        title: const Text("Ubah informasi gender"),
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
                const DropDownInput(defaultvalue: "Laki laki", text: "Jenis kelamin"),
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