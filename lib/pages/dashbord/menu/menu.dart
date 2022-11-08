import 'package:flutter/material.dart';
import '../movimentos/movimentos.dart';
import 'widget/botao_icon.dart';
import 'widget/long_bt_icon.dart';
import 'widget/long_profile.dart';
import 'widget/short_profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Color dashbord = Colors.green.shade300;
  Color movimentos = Colors.black38;
  Color planejado = Colors.black38;
  Color poupanca = Colors.black38;
  Color definicao = Colors.black38;

  bool dash = true;
  bool word = false;
  bool excel = false;
  bool pdf = false;
  bool setting = false;

  bool menuShort = true;
  @override
  Widget build(BuildContext context) {
    return (menuShort)
        ? SizedBox(
            width: 70,
            child: Card(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ShortProfile(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  dash = true;
                                  word = false;
                                  excel = false;
                                  pdf = false;
                                  setting = false;
                                });
                              }),
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 50,
                                width: 49,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/dashboard.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: dash,
                              child: const SizedBox(
                                height: 50,
                                width: 13,
                                child: Card(
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  dash = false;
                                  word = true;
                                  excel = false;
                                  pdf = false;
                                  setting = false;
                                });
                              }),
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/icons/word.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: word,
                              child: const SizedBox(
                                height: 40,
                                width: 13,
                                child: Card(
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  dash = false;
                                  word = false;
                                  excel = true;
                                  pdf = false;
                                  setting = false;
                                });
                              }),
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/icons/excel.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: excel,
                              child: const SizedBox(
                                height: 40,
                                width: 13,
                                child: Card(
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  dash = false;
                                  word = false;
                                  excel = false;
                                  pdf = true;
                                  setting = false;
                                });
                              }),
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 35,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/icons/pdf.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: pdf,
                              child: const SizedBox(
                                height: 40,
                                width: 13,
                                child: Card(
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  dash = false;
                                  word = false;
                                  excel = false;
                                  pdf = false;
                                  setting = true;
                                });
                              }),
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/setting.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: setting,
                              child: const SizedBox(
                                height: 40,
                                width: 13,
                                child: Card(
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          highlightColor: Colors.green.shade300,
                          splashRadius: 12,
                          iconSize: 20,
                          color: Colors.black38,
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          onPressed: () {
                            setState(() {
                              menuShort = !menuShort;
                            });
                          },
                        ),
                        const BotaoIcon(),
                      ],
                    ),
                  ]),
            ),
          )
        : SizedBox(
            width: 270,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LongProfile(),
                      Column(
                        children: [
                          LongIconBt(
                            iconData: const Icon(Icons.space_dashboard_rounded),
                            color: dashbord,
                            label: 'Dashbord',
                            onPressed: () {
                              setState(() {
                                dashbord = Colors.green.shade300;
                                movimentos = Colors.black38;
                                planejado = Colors.black38;
                                poupanca = Colors.black38;
                                definicao = Colors.black38;
                              });
                            },
                          ),
                          LongIconBt(
                            iconData: const Icon(Icons.description_rounded),
                            color: movimentos,
                            label: 'Word',
                            onPressed: () {
                              setState(() {
                                dashbord = Colors.black38;
                                movimentos = Colors.green.shade300;
                                planejado = Colors.black38;
                                poupanca = Colors.black38;
                                definicao = Colors.black38;
                              });
                            },
                          ),
                          LongIconBt(
                            iconData: const Icon(Icons.list_alt_rounded),
                            color: planejado,
                            label: 'Excel',
                            onPressed: () {
                              setState(() {
                                dashbord = Colors.black38;
                                movimentos = Colors.black38;
                                planejado = Colors.green.shade300;
                                poupanca = Colors.black38;
                                definicao = Colors.black38;
                              });
                            },
                          ),
                          LongIconBt(
                            iconData: const Icon(Icons.picture_as_pdf_rounded),
                            color: poupanca,
                            label: 'Pdf',
                            onPressed: () {
                              setState(() {
                                dashbord = Colors.black38;
                                movimentos = Colors.black38;
                                planejado = Colors.black38;
                                poupanca = Colors.green.shade300;
                                definicao = Colors.black38;
                              });
                            },
                          ),
                          LongIconBt(
                            iconData:
                                const Icon(Icons.settings_applications_rounded),
                            color: definicao,
                            label: 'Definicoes',
                            onPressed: () {
                              setState(() {
                                dashbord = Colors.black38;
                                movimentos = Colors.black38;
                                planejado = Colors.black38;
                                poupanca = Colors.black38;
                                definicao = Colors.green.shade300;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            highlightColor: Colors.green.shade300,
                            splashRadius: 12,
                            iconSize: 20,
                            color: Colors.black38,
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            onPressed: () {
                              setState(() {
                                menuShort = !menuShort;
                              });
                            },
                          ),
                          const Movimentos(),
                        ],
                      ),
                    ]),
              ),
            ),
          );
  }
}
