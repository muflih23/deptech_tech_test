import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/pages/home/edit_profile/birth_edit.dart';
import 'package:deptech_flutter_reminder/pages/home/edit_profile/email_edit.dart';
import 'package:deptech_flutter_reminder/pages/home/edit_profile/gender_edit.dart';
import 'package:deptech_flutter_reminder/pages/home/edit_profile/name_edit.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  const UserBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenWidth = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth/2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItalicPrimaryText(size: 18, text: "Nama pengguna", color: darkerPrimary),
                  const SizedBox(height: 6),
                  PrimaryText(size: 18, text: "Fadli Muflih", color: lighterPrimary),
                ],
              ),
            ),
            const SizedBox(width: 6,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => NameEdit())
                  )
                );
              },
              child: ItalicPrimaryText(size: 18, text: "Ubah nama", color: theme)
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth/2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItalicPrimaryText(size: 18, text: "Email pengguna", color: darkerPrimary),
                  const SizedBox(height: 6),
                  PrimaryText(size: 18, text: "avernus23@gmail.com", color: lighterPrimary),
                ],
              ),
            ),
            const SizedBox(width: 6,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => EmailEdit())
                  )
                );
              },
              child: ItalicPrimaryText(size: 18, text: "Ubah email", color: theme))
          ],
        ),
        const SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth/2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItalicPrimaryText(size: 18, text: "Jenis kelamin", color: darkerPrimary),
                  const SizedBox(height: 6),
                  PrimaryText(size: 18, text: "Laki laki", color: lighterPrimary),
                ],
              ),
            ),
            const SizedBox(width: 6,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => EditGender())
                  )
                );
              },
              child: ItalicPrimaryText(size: 18, text: "Ubah", color: theme))
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth/2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItalicPrimaryText(size: 18, text: "Tanggal lahir", color: darkerPrimary),
                  const SizedBox(height: 6),
                  PrimaryText(size: 18, text: "23 Febuari 1999", color: lighterPrimary),
                ],
              ),
            ),
            const SizedBox(width: 6,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => EditBirth()))
                );
              },
              child: ItalicPrimaryText(size: 18, text: "Ubah", color: theme))
          ],
        ),
      ],
    );
  }
}