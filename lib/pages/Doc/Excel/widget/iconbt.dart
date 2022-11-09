import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconBtSelAllShhet extends StatelessWidget {
  const IconBtSelAllShhet({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Icon(
        Icons.api_rounded,
        size: 24,
        color: Colors.grey.shade500,
      ),
    );
  }
}
