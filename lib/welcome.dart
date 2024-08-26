import 'package:flutter/material.dart';


class welcome extends StatelessWidget {
  welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Color(0xff0ABFBC),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                Column(
                  children: [
                    Container(
                      width: size.width*0.7,
                      height: size.height*0.4,
                      child:Image.asset('assets/images/onibus.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fast',
                          style: TextStyle(fontSize: size.height * 0.08),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Pass',
                          style: TextStyle(
                              fontSize: size.height * 0.08,
                              color: Color(0xffFC354C)),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: size.height * 0.18,
                  width: size.width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height * 0.07,
                        width: size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFC354C),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20,),
                            )),
                      ),
                      Container(
                        height: size.height * 0.07,
                        width: size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFC354C),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              'Cadastre-se',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
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
