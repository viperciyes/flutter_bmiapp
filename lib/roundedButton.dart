import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'const.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.title,
      @required this.colour,
      @required this.onPressed,
      @required this.icon,
      this.isActive});

  final bool isActive;
  final IconData icon;
  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: isActive ? Colors.white : colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 180.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FaIcon(
                  icon,
                  color: isActive ? kButACol : Colors.white,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: isActive ? kButACol : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
