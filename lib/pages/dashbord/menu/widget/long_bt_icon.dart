import 'package:flutter/material.dart';

class LongIconBt extends StatefulWidget {
  final Icon iconData;
  final Color color;
  final String label;
  final VoidCallback onPressed;

  const LongIconBt(
      {Key? key,
      required this.iconData,
      required this.color,
      required this.onPressed,
      required this.label})
      : super(key: key);

  @override
  State<LongIconBt> createState() => _LongIconBtState();
}

class _LongIconBtState extends State<LongIconBt> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.green.shade300,
            splashRadius: 25,
            iconSize: 40,
            color: widget.color,
            icon: widget.iconData,
            onPressed: widget.onPressed,
          ),
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 18,
              color: widget.color,
            ),
          )
        ],
      ),
    );
  }
}
