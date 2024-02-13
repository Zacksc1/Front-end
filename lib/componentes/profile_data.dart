import 'package:flutter/material.dart';

ListTile dataProfile(
  String dados,
) {
  return ListTile(
    title: Text(
      dados,
      style: TextStyle(color: Colors.black,fontSize: 20,),
    ),
  );
}

ListTile dataProfile2(
  String dados,
) {
  return ListTile(
    title: Text(
      dados,
      style: TextStyle(color: Colors.black,fontSize: 20),
    ),
  );
}
