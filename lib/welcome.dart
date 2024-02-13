import 'package:flutter/material.dart';
import 'package:ppo/componentes/gradient.dart';

class welcome extends StatelessWidget {
  welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: allColor(),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(children: [ 
                  Image.asset('assets/images/image.png'),
                Text(
                  'Fast Pass',
                  style: TextStyle(fontSize: 50),
                ),
                ],),
                
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.8),
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Junte-se a nós',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ],
            ),
          )),
    );
  }
}
