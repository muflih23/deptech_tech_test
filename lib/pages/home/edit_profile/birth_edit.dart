import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class EditBirth extends StatefulWidget {
  EditBirth({Key? key}) : super(key: key);

  @override
  State<EditBirth> createState() => _EditBirthState();
}

class _EditBirthState extends State<EditBirth> {
  final _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1945, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        elevation: 0,
        title: const Text("Edit tanggal lahir"),
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
                    PrimaryText(
                      size: 20, 
                      text: "Tanggal lahir pengguna saat ini :", 
                      color: primaryText
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryText(
                      size: 20, 
                      text: ("${selectedDate.toLocal()}".split(' ')[0]), 
                      color: primaryText
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: ItalicPrimaryText(size: 20, text: "Ubah", color: theme),
                    )
                  ],
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