import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

class RecargaC extends StatefulWidget {
  const RecargaC({super.key});

  @override
  State<RecargaC> createState() => _nameState();
}

class _nameState extends State<RecargaC> {
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
                            width: size.width,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Valor da recarga: 100',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            )),
                  
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.8,
                    child: Image.asset('assets/images/check.png'),
                  ),
                  Text(
                    'Pagamento Concluido',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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