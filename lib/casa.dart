import 'package:flutter/material.dart';

class casa extends StatefulWidget {
  const casa({Key? key}) : super(key: key);

  @override
  _casaState createState() => _casaState();
}

class _casaState extends State<casa> {
  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();
  String x = 'Resultado';

  void calcular() {
    setState(() {
      double a = double.parse(v1.text);
      double b = double.parse(v2.text);
      double resuldado = a+b;
      x = 'Resultado: ${resuldado.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
          title: Text('Senai')
      ),
          body: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.person_rounded, size: 90, color: Colors.red),
                TextField(
                  controller: v1,
                  maxLength: 100,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle),
                    labelText: 'Digite o Email',
                    labelStyle: TextStyle(

                    )
                  ),
                ),
                TextField(
                  controller: v2,
                  obscureText: true,
                  maxLength: 100,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key),
                      labelText: 'Digite a senha',
                      labelStyle: TextStyle(

                      )
                  ),
                ),
                SizedBox(height: 70),
                TextButton(
                    onPressed: calcular,
                    child: Text('Logar', style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size(0 , 40)

                    ),
                ),
                Text('Loga ai brow $x'),
            ],
      ),
          )
    );
  }
}