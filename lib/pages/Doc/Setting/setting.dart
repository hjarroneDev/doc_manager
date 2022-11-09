import 'package:flutter/material.dart';

class SettingDash extends StatefulWidget {
  const SettingDash({super.key});

  @override
  State<SettingDash> createState() => _SettingDashState();
}

class _SettingDashState extends State<SettingDash> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: const [
              Center(
                child: Text('Setting'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
