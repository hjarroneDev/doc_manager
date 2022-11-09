import 'package:flutter/material.dart';

class DashResumo extends StatefulWidget {
  const DashResumo({super.key});

  @override
  State<DashResumo> createState() => _DashResumoState();
}

class _DashResumoState extends State<DashResumo> {
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
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  border: Border.all(color: Colors.blueAccent),
                ),
                height: 100,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.blueAccent),
                            ),
                            width: 40,
                            height: 20,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade600,
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade600,
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              height: 20,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
