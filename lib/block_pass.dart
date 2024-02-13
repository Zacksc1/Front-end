import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class block_pass extends StatefulWidget {
  const block_pass({super.key});

  @override
  State<block_pass> createState() => _block_passState();
}

class _block_passState extends State<block_pass> {
  bool? _checkList = false;
  bool? _checkList2 = false;
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: allColor(),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Wrap(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                'Oque Aconteceu ?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Text(
                              'Após o bloqueio seu passe atual não podera ser mais usado',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        espacoH(100),
                        CheckboxListTile(
                            title: Text(
                              'Fui roubado',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            tileColor: Colors.white,
                            controlAffinity: ListTileControlAffinity.leading,
                            tristate: true,
                            value: _checkList,
                            onChanged: (bool? newValue) {
                              setState(() {
                                newValue == true
                                    ? _checkList2 = false
                                    : _checkList == true;
                                _checkList = newValue;
                              });
                            }),
                        CheckboxListTile(
                            title: Text(
                              'Perdi o passe',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            tileColor: Colors.white,
                            controlAffinity: ListTileControlAffinity.leading,
                            tristate: true,
                            value: _checkList2,
                            onChanged: (bool? newValue2) {
                              setState(() {
                                newValue2 == true
                                    ? _checkList = false
                                    : _checkList2 == true;
                                _checkList2 = newValue2;
                              });
                            }),
                        espacoH(230),
                        Container(
                          width: size.width*0.5,
                          height: size.height*0.06,
                          child: ElevatedButton(
                            onPressed: () {
                              _checkList == true
                                  ? Navigator.pushNamed(context, '/bo')
                                  : Navigator.pushNamed(context, '/escolha');
                            },
                            child: Text(
                              'Confirmar',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        espacoH(10),
                        Container(
                          width: size.width*0.5,
                          height: size.height*0.06,
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
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
