import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  const UserBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CenteredPrimaryText(size: 24, text: "Fadli Muflih", color: primaryText),
        const SizedBox(height: 16,),
        CenteredPrimaryText(size: 18, text: "mfadli.muflih@unpad.ac.id", color: primaryText),
        const SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItalicPrimaryText(size: 18, text: "Jenis kelamin", color: theme),
            PrimaryText(size: 18, text: "Laki laki", color: primaryText)
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItalicPrimaryText(size: 18, text: "Tanggal lahir", color: theme),
            PrimaryText(size: 18, text: "23 Febuari 1999", color: primaryText)
          ],
        ),
      ],
    );
  }
}