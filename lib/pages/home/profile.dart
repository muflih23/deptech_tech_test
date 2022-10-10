import 'package:deptech_flutter_reminder/components/buttons.dart';
import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/pages/home/components/avatar.dart';
import 'package:deptech_flutter_reminder/pages/home/components/bio.dart';
import 'package:deptech_flutter_reminder/pages/home/edit_bio.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    //var screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app_outlined)),
          const SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 64,),
              const UserAvatar(),
              const SizedBox(height: 36,),
              const UserBio(),
              const SizedBox(height: 64,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const EditBioPage())
                    )
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit_outlined, color: theme, size: 20,),
                    PrimaryText(size: 20, text: "Ubah bio", color: theme)
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}