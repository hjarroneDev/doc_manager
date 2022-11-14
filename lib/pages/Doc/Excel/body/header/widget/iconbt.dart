import 'package:flutter/material.dart';

class IconBtSelAllShhet extends StatelessWidget {
  const IconBtSelAllShhet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 28,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: const Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
          right: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
        ),
      ),
      child: Icon(
        Icons.api_rounded,
        size: 24,
        color: Colors.grey.shade500,
      ),
    );
  }
}
