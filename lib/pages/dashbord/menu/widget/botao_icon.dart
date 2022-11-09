import 'package:flutter/material.dart';

class BotaoIcon extends StatefulWidget {
  const BotaoIcon({Key? key}) : super(key: key);

  @override
  State<BotaoIcon> createState() => _BotaoIconState();
}

class _BotaoIconState extends State<BotaoIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: const SizedBox(
        height: 50,
        width: 65,
        child: Card(
          shadowColor: Colors.green,
          color: Colors.white30,
          child: Icon(
            Icons.add_rounded,
            color: Colors.black87,
            size: 40,
          ),
        ),
      ),
    );
  }
}
