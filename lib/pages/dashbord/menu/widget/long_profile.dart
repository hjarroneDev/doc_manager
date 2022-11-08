import 'package:flutter/material.dart';

class LongProfile extends StatefulWidget {
  const LongProfile({Key? key}) : super(key: key);

  @override
  State<LongProfile> createState() => _LongProfileState();
}

class _LongProfileState extends State<LongProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        shadowColor: Colors.green,
        color: Colors.white30,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/profile.png"),
                                fit: BoxFit.fill))),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Henriques Arrone',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    )),
                Divider(
                  height: 2,
                ),
                Text(
                  'hjarrone@gmail.com',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
