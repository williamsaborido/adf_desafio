import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(100),
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
            // Acho que vi uma fina borda preta à direita,
            //então decidi colocar esse container abaixo
            //já que não consegui usar o border, por já ter
            //usado o borderRadius acima e não poder definir
            //outra borda diferente no mesmo componente
            Container(
              width: 0.5,
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
