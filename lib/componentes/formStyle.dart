import 'package:flutter/material.dart';

InputDecoration getInputdecoration(String label) {
  return InputDecoration(
      hintStyle: TextStyle(fontSize: 20),
      fillColor: Colors.white.withOpacity(0.4),
      filled: true,
      hintText: label,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
      contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10));
}



formMenuBottons(String nome, double size, String rota, BuildContext context) {
  return Container(
    height: 70,
    width: size,
    child: ElevatedButton(
        style: menuBottonsStyle(),
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        child: Text(
          nome,
          style: TextStyle(color: Colors.white),
        )),
  );
}

menuBottonsStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.black.withOpacity(0.7),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
}

editBottonsStyle(Colors) {
  return ElevatedButton.styleFrom(
      backgroundColor: Colors,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
}

checkboxStyle(String nome, State state, dynamic check) {
  return;
}

espacoH(double size) {
  return SizedBox(
    height: size,
  );
}

espacoW(double size) {
  return SizedBox(
    width: size,
  );
}

 

