import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';


class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    double saldo = 100.0;
    int viagens = 20;
    final size = MediaQuery.of(context).size;

    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        color: Color(0xff0ABFBC),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: size.width,
              height: size.height * 0.50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4), // Cor da sombra
                      spreadRadius: 1, // Expansão da sombra
                      blurRadius: 8, // Desfoque da sombra
                      offset: Offset(4, 4), // Deslocamento da sombra
                    ),
                  ],
                  color: Color(0xffFC354C),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/profile');
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/eu.jpg'),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bem vindo,\nUsuario',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      IconButton(
                          color: Colors.white,
                          iconSize: 50,
                          onPressed: () {},
                          icon: Icon(Icons.menu))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.4), // Cor da sombra
                            spreadRadius: 1, // Expansão da sombra
                            blurRadius: 8, // Desfoque da sombra
                            offset: Offset(4, 4), // Deslocamento da sombra
                          ),
                        ],
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 5),
                          child: Text(
                            'Saldo :$saldo',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text(
                            'Viagens disponiveis:$viagens',
                            style: TextStyle(fontSize: 25),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.16,
                  )
                ],
              )),
          SizedBox(
            height: size.height * 0.01,
          ),
          Container(
            height: size.height * 0.45,
            width: size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                formNFC('Pagamento por NFC', size, '/nfc', context,
                    AssetImage('assets/images/nfc.png')),
                formMenuBottons('Realizar recarga', size, '/recarga', context,
                    AssetImage('assets/images/dinheiro.png')),
                formMenuBottons('Bloquear passe', size, '/block_pass', context,
                    AssetImage('assets/images/block4.png')),
                formMenuBottons('Novo passe', size, '/newPass', context,
                    AssetImage('assets/images/carteira.png')),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          )
        ],
      ),
    )));
  }
}
