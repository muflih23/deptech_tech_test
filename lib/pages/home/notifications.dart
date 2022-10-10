import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: darkerPrimary,
        title: const Text("Notifikasi"),
      ),
      body: Center(
        child: PrimaryText(color: primaryText, size: 18, text: "Belum ada notifikasi"),
      ),
    );
  }
}