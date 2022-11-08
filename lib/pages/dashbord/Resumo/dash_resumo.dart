import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashResumo extends StatefulWidget {
  const DashResumo({super.key});

  @override
  State<DashResumo> createState() => _DashResumoState();
}

class _DashResumoState extends State<DashResumo> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: double.infinity,
        child: Card(
          color: Colors.white,
        ));
  }
}
