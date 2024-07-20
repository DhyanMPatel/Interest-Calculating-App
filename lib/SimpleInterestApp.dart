import 'package:flutter/material.dart';

class SimpleInterestApp extends StatefulWidget {
  const SimpleInterestApp({super.key});

  @override
  State<SimpleInterestApp> createState() => _SimpleInterestAppState();
}

class _SimpleInterestAppState extends State<SimpleInterestApp> {
  TextEditingController _principalColtroller = TextEditingController();
  TextEditingController _rateColtroller = TextEditingController();
  TextEditingController _timeColtroller = TextEditingController();

  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interest Calulater")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _principalColtroller,
              decoration: InputDecoration(
                labelText: "Principal Amount",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _rateColtroller,
              decoration: InputDecoration(
                labelText: "Rate Of Interest",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _timeColtroller,
              decoration: InputDecoration(
                labelText: "Time in Year",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: _calculater,
              child: Text("Calculate"),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Container(
                child: Text(
                  result,

                  style: TextStyle(fontSize: 20),
                ),
                width: 400,
                height: 100,
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _calculater() {
    double principal = double.tryParse(_principalColtroller.text) ?? 0.0;
    double rate = double.tryParse(_rateColtroller.text) ?? 0.0;
    double time = double.tryParse(_timeColtroller.text) ?? 0.0;

    setState(() {
      result = "Simple Interest : \$${(principal * rate * time) / 100} ";
    });
  }
}
