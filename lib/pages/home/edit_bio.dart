import 'package:deptech_flutter_reminder/pages/home/components/bio_form.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class EditBioPage extends StatefulWidget {
  const EditBioPage({Key? key}) : super(key: key);

  @override
  State<EditBioPage> createState() => _EditBioPageState();
}

class _EditBioPageState extends State<EditBioPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        elevation: 0,
        title: const Text("Edit bio"),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: screenHeight,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const BioForm(),
          ),
        ),
      )
    );
  }
}