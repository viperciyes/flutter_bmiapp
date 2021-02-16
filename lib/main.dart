import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bmiapp/roundedButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        // backgroundColor: Color(0xffEA6262),
        body: SafeArea(child: HomePage()),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.65,
          decoration: kBoxDec,
          child: Column(
            //top part
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'GENDER',
                style: kTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundedButton(
                      icon: FontAwesomeIcons.mars,
                      onPressed: null,
                      title: "Male",
                      colour: kButCIn,
                      isActive: true,
                    ),
                    RoundedButton(
                      icon: FontAwesomeIcons.venus,
                      onPressed: () {},
                      title: "Female",
                      colour: kButCIn,
                      isActive: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          //bottom column
          children: [
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ],
    );
  }
}
