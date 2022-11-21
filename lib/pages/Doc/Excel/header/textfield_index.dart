import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Provider/Index/index.dart';

class TextFielderIndex extends StatefulWidget {
  const TextFielderIndex({
    super.key,
  });

  @override
  State<TextFielderIndex> createState() => _TextFielderIndexState();
}

class _TextFielderIndexState extends State<TextFielderIndex> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: context.watch<Indexs>().indexControler,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}
