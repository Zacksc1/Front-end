import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ppo/componentes/gradient.dart';

class Recarga extends StatefulWidget {
  const Recarga({Key? key});

  @override
  State<Recarga> createState() => _RecargaState();
}

class _RecargaState extends State<Recarga> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double saldo = 100.0;
    String name = 'isaac';
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: allColor(),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.4),
                ),
                width: size.width,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: ClipOval(
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/eu.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            name,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                    width: size.width,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Text(
                          'Saldo atual:\n RS $saldo',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.start,
                        ))),
              ),

              
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Valor da recarga:',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              fillColor: Colors.white.withOpacity(0.4),
                              filled: true,
                              hintText: 'RS',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 320, 0, 0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.fromLTRB(60, 15, 60, 15)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/qrCode');
                        },
                        child: Text(
                          'Confirmar',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
