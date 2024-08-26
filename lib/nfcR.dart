import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class nfcR extends StatefulWidget {
  const nfcR({super.key});

  @override
  State<nfcR> createState() => _nameState();
}

class _nameState extends State<nfcR> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: size.width * 1,
            height: size.height * 1,
            decoration: BoxDecoration(
              gradient: allColor(),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/nfc2.png'),
                  ),
                  Text(
                    'Processando pagamento',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/carregando.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.10,
                        height: size.height * 0.07,
                        child: ElevatedButton(
                            style: editBottonsStyle(Color(0xff26AD34)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/nfcCheck');
                            },
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      Container(
                        width: size.width * 0.50,
                        height: size.height * 0.07,
                        child: ElevatedButton(
                            style: editBottonsStyle(Color(0xffF00000)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      Container(
                        width: size.width * 0.10,
                        height: size.height * 0.07,
                        child: ElevatedButton(
                            style: editBottonsStyle(Color(0xffF00000)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/nfcError');
                            },
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
