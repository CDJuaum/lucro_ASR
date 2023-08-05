import 'package:flutter/material.dart';
import 'package:asr_profits/sizes_helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ASR - Gold Investments'),
          centerTitle: true,
        ),
        body: MyAppBody(),
      ),
    );
  }
}

class MyAppBody extends StatefulWidget {
  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  double _saldoInicial = 0.00;
  double _aporte = 0.00;
  double _lucro = 0;
  String periodo = "Período";
  String capital = "Capital";
  String lucro = "Lucro";
  double _month1 = 0.00;
  double _month2 = 0.00;
  double _month3 = 0.00;
  double _month4 = 0.00;
  double _month5 = 0.00;
  double _month6 = 0.00;
  double _month7 = 0.00;
  double _month8 = 0.00;
  double _month9 = 0.00;
  double _month10 = 0.00;
  double _month1Cap = 0.00;
  double _month2Cap = 0.00;
  double _month3Cap = 0.00;
  double _month4Cap = 0.00;
  double _month5Cap = 0.00;
  double _month6Cap = 0.00;
  double _month7Cap = 0.00;
  double _month8Cap = 0.00;
  double _month9Cap = 0.00;
  double _month10Cap = 0.00;
  String tempo1 = "6 meses:";
  String tempo2 = "1 ano:";
  String tempo3 = "1.5 anos:";
  String tempo4 = "2 anos:";
  String tempo5 = "2.5 anos:";
  String tempo6 = "3 anos:";
  String tempo7 = "3.5 anos:";
  String tempo8 = "4 anos:";
  String tempo9 = "4.5 anos:";
  String tempo10 = "5 anos:";
  int _i = 0;

  void _calculateResult() {
    _i = 0;
    _month1Cap = (_saldoInicial + (_saldoInicial * (_lucro / 100))) + _aporte;
    while(_i < 50){
      if(_i < 4){
        _month1Cap = (_month1Cap + (_month1Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 4){
        _month2Cap = (_month1Cap + (_month1Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 9){
        _month2Cap = (_month2Cap + (_month2Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 9){
        _month3Cap = (_month2Cap + (_month2Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 14){
        _month3Cap = (_month3Cap + (_month3Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 14){
        _month4Cap = (_month3Cap + (_month3Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 19){
        _month4Cap = (_month4Cap + (_month4Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 19){
        _month5Cap = (_month4Cap + (_month4Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 24){
        _month5Cap = (_month5Cap + (_month5Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 24){
        _month6Cap = (_month5Cap + (_month5Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 29){
        _month6Cap = (_month6Cap + (_month6Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 29){
        _month7Cap = (_month6Cap + (_month6Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 34){
        _month7Cap = (_month7Cap + (_month7Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 34){
        _month8Cap = (_month7Cap + (_month7Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 39){
        _month8Cap = (_month8Cap + (_month8Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 39){
        _month9Cap = (_month8Cap + (_month8Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 44){
        _month9Cap = (_month9Cap + (_month9Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 44){
        _month10Cap = (_month9Cap + (_month9Cap * (_lucro / 100))) + _aporte;
      }
      if(_i < 49){
        _month10Cap = (_month10Cap + (_month10Cap * (_lucro / 100))) + _aporte;
      }
      if(_i == 49){
        _month1Cap = double.parse((_month1Cap).toStringAsFixed(2));
        _month2Cap = double.parse((_month2Cap).toStringAsFixed(2));
        _month3Cap = double.parse((_month3Cap).toStringAsFixed(2));
        _month4Cap = double.parse((_month4Cap).toStringAsFixed(2));
        _month5Cap = double.parse((_month5Cap).toStringAsFixed(2));
        _month6Cap = double.parse((_month6Cap).toStringAsFixed(2));
        _month7Cap = double.parse((_month7Cap).toStringAsFixed(2));
        _month8Cap = double.parse((_month8Cap).toStringAsFixed(2));
        _month9Cap = double.parse((_month9Cap).toStringAsFixed(2));
        _month10Cap = double.parse((_month10Cap).toStringAsFixed(2));
      }
      _i++;
    }
    _month1 = double.parse((_month1Cap * (_lucro / 100)).toStringAsFixed(2));
    _month2 = double.parse((_month2Cap * (_lucro / 100)).toStringAsFixed(2));
    _month3 = double.parse((_month3Cap * (_lucro / 100)).toStringAsFixed(2));
    _month4 = double.parse((_month4Cap * (_lucro / 100)).toStringAsFixed(2));
    _month5 = double.parse((_month5Cap * (_lucro / 100)).toStringAsFixed(2));
    _month6 = double.parse((_month6Cap * (_lucro / 100)).toStringAsFixed(2));
    _month7 = double.parse((_month7Cap * (_lucro / 100)).toStringAsFixed(2));
    _month8 = double.parse((_month8Cap * (_lucro / 100)).toStringAsFixed(2));
    _month9 = double.parse((_month9Cap * (_lucro / 100)).toStringAsFixed(2));
    _month10 = double.parse((_month10Cap * (_lucro / 100)).toStringAsFixed(2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text('\n', textScaleFactor: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: const AssetImage('assets/images/ASR.png'), height: displayHeight(context)*0.15),
              ],
            ),
            const Text('\n', textScaleFactor: 1.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: displayWidth(context)*0.25,
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Saldo Inicial',
                    ),
                    onChanged: (value) {
                      try{
                        setState(() {
                        _saldoInicial = double.parse(value);
                      });
                      }
                      on FormatException catch(_){
                        setState(() {
                          _saldoInicial = 0;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: displayWidth(context)*0.25,
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Aporte Mensal',
                    ),
                    onChanged: (value) {
                      try{
                        setState(() {
                        _aporte = double.parse(value);
                      });
                      }
                      on FormatException catch(_){
                        setState(() {
                          _aporte = 0;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: displayWidth(context)*0.25,
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Lucro (%)',
                    ),
                    onChanged: (value) {
                      try{
                        setState(() {
                        _lucro = double.parse(value);
                      });
                      }
                      on FormatException catch(_){
                        setState(() {
                          _lucro = 0;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),

            const Text('\n', textScaleFactor: 0.5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: displayWidth(context)*0.35,
                  child: 
                    ElevatedButton(
                    onPressed: _calculateResult,
                    child: const Text("calcular"),
                  ),
                ),
              ],
            ),

            const Text('\n'),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(periodo, textAlign: TextAlign.center, textScaleFactor: 1.3, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.7),
                    Text(tempo1, textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo2, textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo3, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo4, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo5, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo6, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo7, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo8, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo9, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                    Text(tempo10, textAlign: TextAlign.center, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.center, textScaleFactor: 0.4),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(capital, textAlign: TextAlign.center, textScaleFactor: 1.3, style: const TextStyle(fontWeight: FontWeight.bold),),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.7),
                    Text("$_month1Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month2Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month3Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month4Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month5Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month6Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month7Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month8Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month9Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month10Cap €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(lucro, textAlign: TextAlign.center, textScaleFactor: 1.3, style: const TextStyle(fontWeight: FontWeight.bold),),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.7),
                    Text("$_month1 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month2 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month3 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month4 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month5 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month6 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month7 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month8 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month9 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                    const Text("\n", textAlign: TextAlign.left, textScaleFactor: 0.4),
                    Text("$_month10 €", textAlign: TextAlign.left, textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}