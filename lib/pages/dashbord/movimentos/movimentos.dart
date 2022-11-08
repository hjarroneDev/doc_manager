import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class Movimentos extends StatefulWidget {
  const Movimentos({Key? key}) : super(key: key);

  @override
  State<Movimentos> createState() => _MovimentosState();
}

class _MovimentosState extends State<Movimentos> {
  Future<void> newDoc() async {
    final client = PocketBase('https://pockedbase.up.railway.app');

    await client.admins.authViaEmail('hjarrone.dev@gmail.com', 'Z@laph1960');

// ignore: unused_local_variable
    final collection = await client.collections.create(
      body: {
        'name': 'demo2',
        'schema': [
          {
            'name': 'title',
            'type': 'text',
            'required': true,
            'options': {
              'min': 10,
            },
          },
          {
            'name': 'status',
            'type': 'bool',
          },
        ],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 300,
        child: InkWell(
          onTap: (() {
            newDoc();
          }),
          borderRadius: BorderRadius.circular(5),
          child: const Card(
            shadowColor: Colors.green,
            color: Colors.white30,
            child: Center(
              child: Text(
                'Novo Documento',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
