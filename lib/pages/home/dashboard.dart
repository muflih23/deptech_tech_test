import 'package:deptech_flutter_reminder/components/texts.dart';
import 'package:deptech_flutter_reminder/pages/home/notifications.dart';
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
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkerPrimary,
        title: Text("Home"),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            splashRadius: 0.1,
            icon: const Icon(
              Icons.notifications_outlined
            ),
            onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: ((context) => const NotificationPage())
                )
              );
            },
          ),
          const SizedBox(width: 10,),
          IconButton(
            splashRadius: 0.1,
            splashColor: Colors.transparent,
            icon: const Icon(
              Icons.settings_outlined
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Center(
            child: PrimaryText(color: primaryText, size: 18, text: "Kamu belum menambahkan item",),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10.0,
        focusElevation: 5.0,
        backgroundColor: theme,
        foregroundColor: whiteText,
        child: const Icon(Icons.add)
      ),
    );
  }
}