import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'Resumo/dash_resumo.dart';
import 'menu/menu.dart';

class Dashbord extends StatefulWidget {
  final AdminModel dados;

  const Dashbord({
    Key? key,
    required this.dados,
  }) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: const [
              Menu(),
              Expanded(child: DashResumo()),
            ],
          ),
        ),
      ),
    );
  }
}
