import 'package:doc_manager/pages/Doc/Excel/menu/MinMenu/widget/iconBut.dart';
import 'package:flutter/material.dart';

class MiniMenuA extends StatelessWidget {
  const MiniMenuA({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        IconButon(iconContent: Icon(Icons.content_cut_rounded)),
        IconButon(iconContent: Icon(Icons.content_copy_rounded)),
        IconButon(iconContent: Icon(Icons.content_paste_rounded)),
        IconButon(iconContent: Icon(Icons.clear)),
        IconButon(iconContent: Icon(Icons.delete_rounded)),
      ],
    );
  }
}
