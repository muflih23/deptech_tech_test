import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final void Function() action;
  final MaterialColor bg;
  final MaterialColor fg;
  final String text;

  const LongButton({
    required this.action,
    required this.bg,
    required this.fg,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity,
     child: ElevatedButton(
       onPressed: action,
       child: Text(
         text,
         style: const TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w600,
           letterSpacing: 2,
           ),
         ),
       style: ButtonStyle(
         elevation: MaterialStateProperty.all<double>(10),
         padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.all(15)),
         backgroundColor: MaterialStateProperty.all<Color>(bg),
         foregroundColor: MaterialStateProperty.all<Color>(fg),
         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
           RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15.0),
           )
         ),
       ),
     ),
    );
  }
}