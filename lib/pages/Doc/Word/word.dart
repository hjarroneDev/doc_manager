import 'package:flutter/material.dart';

class WordDash extends StatefulWidget {
  const WordDash({super.key});

  @override
  State<WordDash> createState() => _WordDashState();
}

class _WordDashState extends State<WordDash> {
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
                height: 60,
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
                                child: Text('Word'),
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
