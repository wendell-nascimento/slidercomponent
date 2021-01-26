import 'package:flutter/material.dart';

class MyApp5 extends StatefulWidget {
  @override
  _MyApp5State createState() => _MyApp5State();
}

class _MyApp5State extends State<MyApp5> {
  double _startValue = 5;
  String _valorSelecionado = "Selecione";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider component"),backgroundColor: Colors.deepPurple,),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Slider(
              activeColor: Colors.deepPurple,
                inactiveColor: Colors.grey[300],
                value: _startValue,
                min: 0,
                max: 10,
                divisions: 10,
                label: _valorSelecionado,

                onChanged: (verify){
                  print(verify);
                  setState(() {
                    _startValue = verify;
                    _valorSelecionado = verify.toString();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
