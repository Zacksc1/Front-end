import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

class nfc extends StatefulWidget {
  const nfc({super.key});

  @override
  State<nfc> createState() => _nameState();
}

class _nameState extends State<nfc> {
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
                    'Aproxime seu aparelho NFC para efetuar o pagamento',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/contactless.png'),
                  ),

                  Bottons('iniciar', size,'/nfcR',Color(0xff26AD34), context,
                  AssetImage('assets/images/nfc3.png')),

                ],
              ),
            )),
      ),
    );
  }
}
