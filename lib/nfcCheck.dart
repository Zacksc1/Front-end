import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

class nfcCheck extends StatefulWidget {
  const nfcCheck({super.key});

  @override
  State<nfcCheck> createState() => _nameState();
}

class _nameState extends State<nfcCheck> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: size.width * 1,
            height: size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xff26AD34),
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
                    'Pagamento Concluido',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/check.png'),
                  ),
                  Container(
                    width: size.width * 0.50,
                    height: size.height * 0.07,
                    child: ElevatedButton(
                        style: editBottonsStyle(Color(0xff0ABFBC)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu');
                        },
                        child: Text(
                          'Inicio',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
