import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class bo extends StatefulWidget {
  const bo({super.key});

  @override
  State<bo> createState() => _boState();
}

class _boState extends State<bo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(gradient: allColor()),
        child: Column(
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
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Column(
                children: [
                  Column(
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Text(
                              'Para confirmamos que voce de fato foi roubado o BO é necesario',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Anexar boletim de ocorrencia',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          espacoH(10),
                          Container(
                            height: 150,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 3, color: Colors.black)),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.archive_outlined,
                                  color: Colors.black,
                                  size: 80,
                                )),
                          )
                        ],
                      ),
                      espacoH(200),
                      Container(
                        width: 270,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Confirmar',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      espacoH(10),
                      Container(
                        width: 270,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancelar',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
