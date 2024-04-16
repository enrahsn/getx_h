import '../core/colors.dart';
import 'package:flutter/material.dart';

// ignore_for_file: use_key_in_widget_constructors

// ignore: must_be_immutable
class MyTxtField extends StatelessWidget {
  final TextInputType mytextInputType;
  final bool isPassword;
  final String hint;
  final IconData icon;
  final Function onClick;
  // void Function(String?)? onClick;

  // ignore: body_might_complete_normally_nullable
    // String _errorMessage(String str) {
  String? _errorMessage(String str) {
    switch (hint) {
      case "Enter Your name : ":
        return ' Name is empty!';
      case "Enter Your email  : ":
        return ' Email is empty!';
      case "Enter Your Password : ":
        return ' Password is empty!';
      default:
        ' value is empty!';
    }
    // return null;
  }
              const MyTxtField({
    required this.mytextInputType,
    required this.isPassword,
    required this.hint,
    required this.icon,
    required this.onClick
  });


  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    double scrWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: scrWidth * 0.1, vertical: scrHeight * 0.01),
      child: TextFormField(
        // keyboardType: TextInputType.text,
        // ignore: body_might_complete_normally_nullable
        validator: (value) {
          // if (value.isEmpty) {
          if (value!.isEmpty) {
            return _errorMessage(hint);
            // return 'value is empty';
            //ignore: missing return
          }
          // return '';
        },
        onSaved: onClick,
        cursorColor: kMainColor,
        obscureText: isPassword,
        keyboardType: mytextInputType,
        // obscureText: hint == "Enter Your Password : " ? true : false,
        decoration: InputDecoration(
          // hintText: "Enter Your Password : ",
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: kMainColor,
          ),
          contentPadding: EdgeInsets.all(scrHeight * 0.025),
          //height of TextField
          // decorationTextfield,
          //
          filled: true,
          // fillColor: kBg1Color,
          fillColor: kAlert2Color,
          // to delete borders

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(scrHeight * 0.2),
            borderSide: const BorderSide(color: kTextColor, width: 1.0),
          ),
          // enabledBorder: OutlineInputBorder( borderSide: Divider.createBorderSide(context),),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(scrHeight * 0.2),
            borderSide: const BorderSide(color: kalertColor, width: 3.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(scrHeight * 0.2),
            borderSide: const BorderSide(color: kStopColor, width: 3.0),
          ),
        ),
      ),
    );
  }
}
