import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: theme,
          child: const Text("FM", style: TextStyle(
            fontSize: 24,
            color: Colors.white
          ),),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                //
              },
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.edit_outlined, color: darkerPrimary,),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(50)
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2,4),
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 3,
                )
              ]
            ),
          ),
        )
      ],
    );
  }
}