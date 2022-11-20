import 'package:flutter/material.dart';
import 'body/excel_body.dart';

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
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadiusDirectional.circular(4),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadiusDirectional.circular(4),
                  ),
                  child: const ExcelBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
