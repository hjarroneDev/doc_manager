import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import '../widget/columndeck.dart';
import '../widget/iconbt.dart';
import '../widget/rowdeck.dart';

class BodyV1 extends StatefulWidget {
  const BodyV1({super.key});

  @override
  State<BodyV1> createState() => _BodyV1State();
}

class _BodyV1State extends State<BodyV1> {
  late LinkedScrollControllerGroup _controllersVertical;
  late ScrollController _rowDeck;
  late ScrollController _rowBody;

  @override
  void initState() {
    super.initState();
    _controllersVertical = LinkedScrollControllerGroup();
    _rowDeck = _controllersVertical.addAndGet();
    _rowBody = _controllersVertical.addAndGet();
  }

  @override
  void dispose() {
    _rowDeck.dispose();
    _rowBody.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var columns = [
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
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'y',
      'Z'
    ];

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            // borderRadius: BorderRadius.circular(10),
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
                          width: 1.6,
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
                            width: 1.6,
                          ),
                          right: BorderSide(
                            color: Colors.black12,
                            width: 0.5,
                          ),
                          bottom: BorderSide(
                            color: Colors.black12,
                            width: 1.6,
                          ),
                        ),
                      ),
                      width: 40,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        controller: _rowDeck,
                        child: const RowDeck(),
                      ),
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          controller: _rowBody,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var i = 0; i < 25; i++)
                                SizedBox(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        for (String column in columns)
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              /* border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.black12,
                                                            width: 1,
                                                          ),
                                                          right: BorderSide(
                                                            color: Colors.black12,
                                                            width: 1,
                                                          ),
                                                        ), */
                                            ),
                                            width: 120,
                                            height: 28,
                                            child: TextFormField(
                                              textAlign: TextAlign.center,
                                              decoration: const InputDecoration(
                                                isDense: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 4,
                                                        vertical: 9),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.black26,
                                                    width: 0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
