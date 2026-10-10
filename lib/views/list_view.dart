/*SizedBox(
  width: double.infinity,
  height: 100,
  child: MyButton(),
)

Widget build(BuildContext context) {
  return Column(
    children: [
      _Header(...),  // Ya sabemos qué hace este widget
      _Body(...),
      _Footer(...),
    ],
  );
}
*/

import 'package:flutter/material.dart';

class Buscador extends StatelessWidget{
  const Buscador({super.key});

  @override
  Widget build(BuildContext context){
  return const SizedBox(
    child: Column(
      children: [
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Buscador',
          )
        )
      ]
    )
  );
  }
}

