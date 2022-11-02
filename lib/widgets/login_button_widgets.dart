import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
          )),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          alignment: Alignment.center,
          width: 200,
          height: 60.0,
          child: Row(
            children: const [
              Text(
                'SIGN IN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
              Spacer(),
              Icon(FontAwesomeIcons.arrowRight, color: Colors.black)
            ],
          )),
    );
  }
}
