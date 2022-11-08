// ignore_for_file: unnecessary_null_comparison

import 'package:doc_manager/pages/dashbord/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  AdminModel? dados;
  bool? loginErro;
  bool? emptyErro;

  final userController = TextEditingController();
  final passController = TextEditingController();

  Future<void> auth() async {
    final client = PocketBase('https://pockedbase.up.railway.app');

    try {
      final adminAuthData = await client.admins
          .authViaEmail(userController.text, passController.text);

      dados = adminAuthData.admin;

      setState(() {
        loginErro = false;
      });
    } catch (e) {
      setState(() {
        loginErro = true;
      });
      await Future.delayed(const Duration(milliseconds: 2000));
      setState(() {
        loginErro = false;
      });
    }
  }

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool visivelPass = false;
    return Container(
      color: Colors.cyan[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 190,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                        height: 40,
                        width: 300,
                        child: TextField(
                          controller: userController,
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue.shade600,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        height: 35,
                        width: 300,
                        child: TextField(
                          controller: passController,
                          obscureText: visivelPass,
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: 'PassWord',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue.shade600,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Visibility(
                      visible:
                          (loginErro == null) ? loginErro = false : loginErro!,
                      child: Text(
                        'Falha ao autenticar',
                        style: TextStyle(
                          color: Colors.red.shade300,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Visibility(
                      visible:
                          (emptyErro == null) ? emptyErro = false : emptyErro!,
                      child: Text(
                        'Campos por Preencher',
                        style: TextStyle(
                          color: Colors.red.shade300,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: ElevatedButton(
                        child: FittedBox(
                          child: Text(
                            'Login'.toUpperCase(),
                          ),
                        ),
                        onPressed: () async {
                          if (userController.text.isEmpty ||
                              passController.text.isEmpty) {
                            setState(() {
                              emptyErro = true;
                            });
                            await Future.delayed(
                                const Duration(milliseconds: 2000));
                            setState(() {
                              emptyErro = false;
                            });
                          } else {
                            await auth();

                            // ignore: use_build_context_synchronously
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dashbord(
                                  dados: dados!,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
