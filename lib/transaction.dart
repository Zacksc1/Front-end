import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';
import 'package:ppo/componentes/TaxaScreens.dart';

class transaction extends StatefulWidget {
  const transaction({super.key});

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool operation = true;
    double recarga = 100;

    return MaterialApp(
      home: Scaffold(
          body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(gradient: allColor()),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                    width: size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Valor da recarga: $recarga',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              espacoH(15),
              
              Container(

                width: size.width,
                height: 620,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                Padding(padding: EdgeInsets.all(50),
                child:operation == true ? yes(context, size.width): not(context, size.width),)
              )
            ],
          ),
        ),
      )),
    );
  }
}
