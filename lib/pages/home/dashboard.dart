import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  final Function? feedback;

  const Home({ Key? key, required this.feedback }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      widget.feedback?.call();
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        title: Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10,),
          IconButton(
            icon: const Icon(
              Icons.settings_outlined
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: Center(
        child: PrimaryText(size: 18, text: "Kamu belum menambahkan item", color: primaryText),
      ),
    );
  }
}