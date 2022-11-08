import 'package:flutter/material.dart';

class ShortProfile extends StatefulWidget {
  const ShortProfile({Key? key}) : super(key: key);

  @override
  State<ShortProfile> createState() => _ShortProfileState();
}

class _ShortProfileState extends State<ShortProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              image: AssetImage("assets/icons/user.png"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
