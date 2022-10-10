import 'package:deptech_flutter_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;

  const TitleText({ 
    required this.text,
    Key? key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: theme
      ),
    );
  }
}

class PrimaryText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  const PrimaryText({ 
    required this.size,
    required this.text,
    required this.color,
    Key? key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class CenteredPrimaryText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  const CenteredPrimaryText({ 
    required this.size,
    required this.text,
    required this.color,
    Key? key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class ItalicPrimaryText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  const ItalicPrimaryText({ 
    required this.size,
    required this.text,
    required this.color,
    Key? key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: size,
        fontStyle: FontStyle.italic,
        color: color,
      ),
    );
  }
}