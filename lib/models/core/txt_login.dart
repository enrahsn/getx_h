import 'package:flutter/material.dart';

import '../constant/colors.dart';

class MyTextLogin extends StatelessWidget {
    const MyTextLogin({super.key, required Null Function() onPressed, this.txt, this.login, this.scrName,});

  // const MyTextButton({super.key, this.text});
  final String? txt;
  final String? login;
  final String? scrName;

  @override
  Widget build(BuildContext context) {
    // double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth = MediaQuery.of(context).size.width;
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                txt!,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: scrWidth * .035,
                ),
              ),
               SizedBox(width:scrWidth * .05),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, SignupScr.id);
                  Navigator.pushNamed(context, scrName!);
                },
                child: Text(
                  login!,
                  style: TextStyle(color: kSecColor, fontSize: scrWidth * .045),
                ),
              ),
            ],
          );
          }
}