import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class qrCodeTaxa extends StatefulWidget {
  const qrCodeTaxa({super.key});

  @override
  State<qrCodeTaxa> createState() => _qrCodeTaxaState();
}

class _qrCodeTaxaState extends State<qrCodeTaxa> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double taxa = 25;

    return MaterialApp(
      home: Scaffold(
          body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(gradient: allColor()),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                      icon: Icon(
                        Icons.home_filled,
                        color: Colors.white,
                        size: 40,
                      )),
                  espacoW(50)
                ],
              ),
              Container(
                width: size.width,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Valor da taxa: $taxa',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                  width: size.width,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 250,
                                  width: 250,
                                  child: Image.asset(
                                    'assets/images/qrcode.jpg',
                                    fit: BoxFit.cover,
                                  )),
                              espacoH(10),
                              GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Icon(
                                    Icons.copy,
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {},
                              ),
                              espacoH(10),
                              Container(
                                width: size.width,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                          espacoH(20),
                          Container(
                              height: 50,
                              width: size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {},
                                child: Text('Gerar qrCode',
                                    style: TextStyle(color: Colors.white)),
                              )),
                          Container(
                              height: 50,
                              width: size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancelar',
                                    style: TextStyle(color: Colors.white)),
                              ))
                        ],
                      )))
            ],
          ),
        ),
      )),
    );
  }
}
