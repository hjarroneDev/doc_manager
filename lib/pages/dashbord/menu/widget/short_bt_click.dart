import 'package:flutter/material.dart';

class ShortBt extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  final bool visivel;
  final double height;
  final double width;
  const ShortBt(
      {super.key,
      required this.path,
      required this.onTap,
      required this.visivel,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: visivel,
              child: const SizedBox(
                height: 40,
                width: 13,
                child: Card(
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
