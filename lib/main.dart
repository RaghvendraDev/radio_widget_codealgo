import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var genderSlectedValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Center(
        child: Container(
          width: size.width * 0.8,
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Gender",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: "Male",
                    groupValue: genderSlectedValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        genderSlectedValue = value;
                      });
                    },
                    activeColor: Colors.purple,
                    fillColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  const Text(
                    "Male",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Female",
                    groupValue: genderSlectedValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        genderSlectedValue = value;
                      });
                    },
                    activeColor: Colors.purple,
                    fillColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  const Text(
                    "Female",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
