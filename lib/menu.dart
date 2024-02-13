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
        gradient: allColor(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: size.height*0.01,),
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
                  SizedBox(height: size.height*0.01,),
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.5),
                    ),
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
                    height: size.height*0.16,
                  )
                ],
              )),

          Container(
              height: 275,
              width: size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  formMenuBottons(
                      'Realizar recarga', size.width, '/recarga', context),
                  formMenuBottons(
                      'Bloquear passe', size.width, '/block_pass', context),
                  formMenuBottons(
                      'Novo passe', size.width, '/menu', context),
                ],
              ),
            ),
            SizedBox(height: size.height*0.01,)
            
        ],
      ),
    )));
  }
}
