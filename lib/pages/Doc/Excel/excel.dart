import 'package:doc_manager/pages/Doc/Excel/body/body_v1.dart';
import 'package:flutter/material.dart';

class ExcelDash extends StatefulWidget {
  const ExcelDash({super.key});

  @override
  State<ExcelDash> createState() => _ExcelDashState();
}

class _ExcelDashState extends State<ExcelDash> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 60,
              ),
              const BodyV1(),
              Container(
                color: Colors.grey.shade100,
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
