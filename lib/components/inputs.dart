import 'package:flutter/material.dart';
import '../utils/colors.dart';

class DropDownInput extends StatefulWidget {
  const DropDownInput({
    Key? key,
    required this.defaultvalue,
    required this.text,
  }) : super(key: key);

  final String defaultvalue;
  final String text;

  @override
  State<DropDownInput> createState() => _DropDownInputState();
}
class _DropDownInputState extends State<DropDownInput> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = widget.defaultvalue;
    return Material(
      elevation: 10.0,
      shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15.0),
      child: DropdownButtonFormField(
        elevation: 8,
        value: dropdownvalue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
        items: <String> ['Laki laki', 'Perempuan'].map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                color: primaryText,
                fontWeight: FontWeight.w500,
                fontSize: 16
              ),
            ),
          );
        }).toList(),
        decoration: InputDecoration(
            label: Text(widget.text, style: TextStyle(color: primaryText),),
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.transparent)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme)
            ), errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: error)
            )
          ),
      ),
    );
  }
}

class TextTypeInput extends StatelessWidget {
  const TextTypeInput({
    Key? key,
    required this.text,
    required this.hint,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String text, hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
        decoration: InputDecoration(
          label: Text(text, style: TextStyle(color: primaryText),),
          hintText: hint,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme)
          ), errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: error)
          )
        ),
      ),
    );
  }
}

class TextTypeInputWithLogo extends StatelessWidget {
  const TextTypeInputWithLogo({
    Key? key,
    required this.text,
    required this.hint,
    required this.formIcon,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String text, hint;
  final IconData formIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
        decoration: InputDecoration(
          label: Text(text, style: TextStyle(color: primaryText),),
          prefixIcon: Icon(
            formIcon,
            color: theme,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme)
          ), errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: error)
          )
        ),
      ),
    );
  }
}



class PasswordTypeInputWithLogo extends StatefulWidget {
  const PasswordTypeInputWithLogo({
    Key? key,
    required this.text,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String text;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordTypeInputWithLogo> createState() => _PasswordTypeInputWithLogoState();
}

class _PasswordTypeInputWithLogoState extends State<PasswordTypeInputWithLogo> {

  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15.0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: _isObscured ? true : false,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
        decoration: InputDecoration(
          label: Text(widget.text, style: TextStyle(color: primaryText),),
          suffixIcon: IconButton(onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          }, icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off), color: theme,),
          prefixIcon: Icon(
            Icons.lock,
            color: theme,
          ),
          hintText: 'Password',
          hintStyle:const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme)
          ), errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: error)
          )
        ),
      ),
    );
  }
}