import 'package:flutter/material.dart';
import 'package:ppo/componentes/gradient.dart';
import 'package:ppo/componentes/TaxaScreens.dart';

class taxa extends StatefulWidget {
  const taxa({super.key});

  @override
  State<taxa> createState() => _taxaState();
}

class _taxaState extends State<taxa> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool confirm = true;
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: allColor(),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
                child: confirm ==true ? taxaPaga(context, size.width):taxaNaoPaga(context, size.width),
              )),
        ),
      ),
    ));
  }
}
