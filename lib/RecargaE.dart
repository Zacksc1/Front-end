import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

class RecargaE extends StatefulWidget {
  const RecargaE({super.key});

  @override
  State<RecargaE> createState() => _nameState();
}

class _nameState extends State<RecargaE> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: size.width * 1,
            height: size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xffF00000),
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
                    'Erro no pagamento',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/aviso.png'),
                  ),
                  Bottons('Tentar novamente', size,'/nfc',Color(0xff26AD34), context,
                  AssetImage('assets/images/nfc3.png')),
                  Bottons('Cancelar', size,'/menu',Color(0xff000000), context,
                  AssetImage('assets/images/aviso.png')),
              ]),
            )),
      ),
    );
  }
}
