import 'package:flutter/material.dart';

class IconButon extends StatefulWidget {
  final Icon iconContent;
  const IconButon({super.key, required this.iconContent});

  @override
  State<IconButon> createState() => _IconButonState();
}

class _IconButonState extends State<IconButon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.iconContent,
      iconSize: 20,
      color: Colors.black38,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
