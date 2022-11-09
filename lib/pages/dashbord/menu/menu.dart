import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Provider/PageControler/page_control.dart';
import '../movimentos/movimentos.dart';
import 'widget/botao_icon.dart';
import 'widget/long_bt_icon.dart';
import 'widget/long_profile.dart';
import 'widget/short_bt_click.dart';
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
                      children: [
                        ShortBt(
                          onTap: () {
                            Provider.of<PageControl>(context, listen: false)
                                .dashVisivel();
                          },
                          path: 'assets/icons/dashboard.png',
                          visivel: context.watch<PageControl>().dash,
                          height: 55,
                          width: 49,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ShortBt(
                          onTap: () {
                            Provider.of<PageControl>(context, listen: false)
                                .wordVisivel();
                          },
                          path: 'assets/icons/word.png',
                          visivel: context.watch<PageControl>().word,
                          height: 50,
                          width: 49,
                        ),
                        ShortBt(
                          onTap: () {
                            Provider.of<PageControl>(context, listen: false)
                                .excelVisivel();
                          },
                          path: 'assets/icons/excel.png',
                          visivel: context.watch<PageControl>().excel,
                          height: 50,
                          width: 49,
                        ),
                        ShortBt(
                          onTap: () {
                            Provider.of<PageControl>(context, listen: false)
                                .pdfVisivel();
                          },
                          path: 'assets/icons/pdf.png',
                          visivel: context.watch<PageControl>().pdf,
                          height: 45,
                          width: 49,
                        ),
                        ShortBt(
                          onTap: () {
                            Provider.of<PageControl>(context, listen: false)
                                .settingVisivel();
                          },
                          path: 'assets/icons/setting.png',
                          visivel: context.watch<PageControl>().setting,
                          height: 46,
                          width: 46,
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
