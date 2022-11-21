import 'package:flutter/material.dart';

import 'textfield_formula.dart';
import 'textfield_index.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({super.key});

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadiusDirectional.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                const SizedBox(
                  width: 60,
                  child: TextFielderIndex(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.functions_rounded,
                  color: Colors.blue.shade400,
                ),
                const Expanded(
                  child: TextFielderFormula(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
