import 'package:flutter/material.dart';

class ShortIconBt extends StatefulWidget {
  final IconData iconData;
  final Color color;
  final VoidCallback onPressed;
  const ShortIconBt(
      {Key? key,
      required this.iconData,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  State<ShortIconBt> createState() => _ShortIconBtState();
}

class _ShortIconBtState extends State<ShortIconBt> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.green.shade300,
      splashRadius: 25,
      iconSize: 40,
      color: widget.color,
      icon: Icon(widget.iconData),
      onPressed: widget.onPressed,
    );
  }
}
