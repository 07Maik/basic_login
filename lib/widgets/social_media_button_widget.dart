import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String text;
  const SocialMediaButton({
    Key? key,
    required this.color,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: color, width: 1.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
           iconData,
            color: color,
          ),
          const SizedBox(width: 5.0),
          Text(
            text,
            style: TextStyle(
                fontSize: 17, color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
