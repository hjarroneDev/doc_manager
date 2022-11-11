import 'package:flutter/material.dart';

import 'widget/columndeck.dart';
import 'widget/iconbt.dart';
import 'widget/rowdeck.dart';

class ExcelDash extends StatefulWidget {
  const ExcelDash({super.key});

  @override
  State<ExcelDash> createState() => _ExcelDashState();
}

class _ExcelDashState extends State<ExcelDash> {
  @override
  Widget build(BuildContext context) {
    var cells = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'k',
      'L',
      'M',
    ];

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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              border: const Border(
                                right: BorderSide(
                                  color: Colors.black12,
                                  width: 1,
                                ),
                              ),
                            ),
                            width: 40,
                            height: 28,
                            child: const IconBtSelAllShhet(),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: const Border(
                                  top: BorderSide(
                                    color: Colors.black12,
                                    width: 1,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black12,
                                    width: 1,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.black12,
                                    width: 1,
                                  ),
                                ),
                              ),
                              width: 40,
                              child: const RowDeck(),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              height: 28,
                              child: const ColumnDeck(),
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    right: BorderSide(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                    top: BorderSide(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    for (var i = 0; i < 22; i++)
                                      SizedBox(
                                        child: Row(
                                          children: [
                                            for (String cell in cells)
                                              Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.black12,
                                                      width: 1,
                                                    ),
                                                    right: BorderSide(
                                                      color: Colors.black12,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                height: 25,
                                                width: 90,
                                                child: Center(
                                                  child: Text(''),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                  ],
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
